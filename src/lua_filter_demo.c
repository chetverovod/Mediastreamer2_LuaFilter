/* lua_filter_demo.c  Программа-демонстратор фильтра со встроенной Lua-машиной. */

#include <mediastreamer2/mssndcard.h>
#include <mediastreamer2/dtmfgen.h>
#include <mediastreamer2/msfilerec.h>
#include <mediastreamer2/mscommon.h>
#include <mediastreamer2/msfactory.h>
#include <mediastreamer2/msticker.h>

/* Индекс звуковой карты, которую будем использовать по умолчанию. */
#define DEF_CARD 0

/* Подключаем наш фильтр. */
#include "lua_filter.h"

/*----------------------------------------------------------*/
/* Переменные состояния приложения. */
struct _app_vars
{
    MSDtmfGenCustomTone dtmf_cfg; /* Настройки тестового сигнала генератора. */
    MSFilter* recorder;           /* Указатель на фильтр регистратор. */
    bool_t file_is_open;          /* Флаг того, что файл для записи открыт. */
    /* Порог, при котором прекращается запись принимаемого сигнала в файл. */
    float treshold; 
    bool_t en_rec;          /* Включить запись в файл. */    
    MSFactory *mf;          /* Фабрика фильтров медиастримера. */
	MSSndCardManager *scm ; /* Менеджер звуковых карт. */
    char cards_count;       /* Количество доступных звуковых карт. */
	const char **cards;     /* Список доступных звуковых карт. */
    char* script_preambula_name;      /* Файл преамбулы  скрипта. */
    char* script_body_name;      /* Файл основной части скрипта. */
};

typedef struct _app_vars app_vars;

/*----------------------------------------------------------*/
/* Функция преобразования аргументов командной строки в 
   настройки программы. 
 */
void  scan_args(int argc, char *argv[], app_vars *v)
{
    int i;
    for (i=0; i<argc; i++)
    {
        if (!strcmp(argv[i], "--help"))
        {
            char *p=argv[0]; p=p + 2;
            printf("  %s walkie talkie\n\n", p);
            printf("--help      List of options.\n");
            printf("--version   Version of application.\n");
            printf("--scp       Full name of containing preambula of Lua-script file.\n");
            printf("--scb       Full name of containing body of Lua-script file.\n");
            printf("--gen       Generator frequency.\n");
            printf("--ng        Noise gate treshold level from 0. to 1.0\n");
            printf("--rec       record to file 'record.wav'.\n");
            exit(0);
        }

        if (!strcmp(argv[i], "--version"))
        {
            printf("0.1\n");
            exit(0);
        }

        if (!strcmp(argv[i], "--scp"))
        {
            v->script_preambula_name = ms_strdup(argv[i+1]);
            printf("Lua-script ptrambula file name: %s\n", v->script_preambula_name);
        }

        if (!strcmp(argv[i], "--scb"))
        {
            v->script_body_name = ms_strdup(argv[i+1]);
            printf("Lua-script body file name: %s\n", v->script_body_name);
        }

        if (!strcmp(argv[i], "--gen"))
        {
            v -> dtmf_cfg.frequencies[0] = atoi(argv[i+1]);
            printf("gen freq : %i\n", v -> dtmf_cfg.frequencies[0]);
        }

        if (!strcmp(argv[i], "--ng"))
        {
            v -> dtmf_cfg.frequencies[0] = atoi(argv[i+1]);
            printf("noise gate treshold: %f\n", v -> treshold);
        }
         if (!strcmp(argv[i], "--rec"))
        {
            v -> en_rec = TRUE;
            printf("enable recording: %i\n", v -> en_rec);
        }
    }
}

/*----------------------------------------------------------------------------*/
/* Функция загрузки основной части (тела) скрипта. */
static void load_script_body(app_vars *v, MSFilter* filter)
{
    if (!v->script_body_name) return;
    FILE* f = fopen(v->script_body_name, "r"); 
    char buf[SCRIPT_SIZE_CONST + 1];
    memset(buf, 0, SCRIPT_SIZE_CONST + 1);
    size_t read_res = fread(buf, 1, SCRIPT_SIZE_CONST, f); 
    fclose(f);
    if ((read_res > 0) && (read_res <= SCRIPT_SIZE_CONST))
    {
        printf("Script's body <%s>: <\n%s\n> will be loaded to lua-filter.\n", 
                  v->script_body_name, buf);
        char* cpy = ms_strdup (buf); // Эта копия будет затем удалена фильтром.
        ms_filter_call_method(filter, LUA_FILTER_RUN, &cpy);
    }
    else
    {
        printf("Script's body <%s> is out of buffer, dropped.\n", v->script_body_name);
    }
}

/*----------------------------------------------------------------------------*/
/* Функция загрузки преамбулы скрипта. */
static void load_script_preambula(app_vars *v, MSFilter* filter)
{
    if (!v->script_preambula_name) return;
    FILE* f = fopen(v -> script_preambula_name, "r"); 
    char buf[SCRIPT_SIZE_CONST + 1];
    memset(buf, 0, SCRIPT_SIZE_CONST + 1);
    size_t read_res = fread(buf, 1, SCRIPT_SIZE_CONST, f); 
    fclose(f);
    if ((read_res > 0) && (read_res <= SCRIPT_SIZE_CONST))
    {
        printf("Script's preambula <%s>: <\n%s\n> will be loaded to lua-filter.\n", 
                  v -> script_preambula_name, buf);
        char* cpy = ms_strdup (buf); // Эта копия будет затем удалена фильтром.
        ms_filter_call_method(filter, LUA_FILTER_SET_PREAMBLE, &cpy);
    }
    else
    {
        printf("Script's preambula <%s> is out of buffer, dropped.\n",
         v -> script_preambula_name);
    }
}



/*----------------------------------------------------------------------------*/
/* Функция составляет таблицу доступных звуковых карт. */
static void build_sound_cards_table(app_vars *v)
{
	size_t ndev;
	int i;
	const bctbx_list_t *elem = 
		ms_snd_card_manager_get_list(ms_factory_get_snd_card_manager(v -> mf));
	ndev = bctbx_list_size(elem);
	v -> cards = ms_malloc((ndev + 1)*sizeof(const char *));
	for ( i = 0; elem != NULL; elem = elem->next, i++)
	{
		v -> cards[i] = ms_snd_card_get_string_id((MSSndCard *)elem -> data);
	}
	v -> cards[ndev] = NULL;
	v -> cards_count = ndev;
}

/*----------------------------------------------------------------------------*/
int main(int argc, char *argv[])
{
    /* Устанавливаем настройки по умолчанию. */
    app_vars vars={0};
    vars.treshold =0.01;
    vars.mf = ms_factory_new();
	ms_factory_init_voip(vars.mf);
    vars.scm = ms_factory_get_snd_card_manager(vars.mf);
    build_sound_cards_table(&vars);

    /* Устанавливаем настройки настройки программы в 
     * соответствии с аргументами командной строки. */
    scan_args(argc, argv, &vars);

    /* Создаем экземпляры фильтров передающего тракта. */
    MSSndCard *snd_card =
	ms_snd_card_manager_get_card(vars.scm, vars.cards[DEF_CARD]);

    MSFilter *snd_card_read = ms_snd_card_create_reader(snd_card);
    MSFilter *dtmfgen = ms_factory_create_filter(vars.mf, MS_DTMF_GEN_ID);

    /* Регистрируем наш Lua-фильтр. */
	ms_factory_register_filter(vars.mf, &lua_filter_desc);
    
    MSFilter *lua_filter = ms_factory_create_filter(vars.mf, LUA_FILTER_ID);

    /* Создаем фильтр регистратора. */
    MSFilter *recorder=ms_factory_create_filter(vars.mf, MS_FILE_REC_ID);
    vars.recorder = recorder; 

    /* Соединяем фильтры приёмного тракта. */
    ms_filter_link(snd_card_read, 0, dtmfgen, 0);
    ms_filter_link(dtmfgen, 0, lua_filter, 0);
    ms_filter_link(lua_filter, 0, recorder, 0);
    
    /* Устанавливаем преамбулу Lua-фильтра. */
    load_script_preambula(&vars, lua_filter);

    /* Создаем источник тактов - тикер. */
    MSTicker *ticker = ms_ticker_new();

    /* Подключаем источник тактов. */
    ms_ticker_attach(ticker, snd_card_read);

    load_script_body(&vars, lua_filter);

    /* Если настройка частоты генератора отлична от нуля, то запускаем генератор. */   
    if (vars.dtmf_cfg.frequencies[0])
    {
        /* Настраиваем структуру, управляющую выходным сигналом генератора. */
        vars.dtmf_cfg.duration = 10000;
        vars.dtmf_cfg.amplitude = 1.0;
    }

    /* Организуем цикл перезапуска генератора. */
    printf("Press ENTER to exit.\n ");
    char c=getchar();
    while(c != '\n')
    {
        if(vars.dtmf_cfg.frequencies[0])
        {
            /* Включаем звуковой генератор. */
            ms_filter_call_method(dtmfgen, MS_DTMF_GEN_PLAY_CUSTOM,
                    (void*)&vars.dtmf_cfg);
        }
        c=getchar();
        printf("--\n");
    }
    if (vars.en_rec ) ms_filter_call_method(recorder, MS_FILE_REC_CLOSE, 0);
}