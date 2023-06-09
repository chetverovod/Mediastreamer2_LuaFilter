/* lua_filter_demo.c  Программа-демонстратор фильтра со встроенной Lua-машиной. */
#include <sys/stat.h>

/* Подключаем заголовочные файлы фильтров Mediastreamer2. */
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

/*----------------------------------------------------------------------------*/
/* Переменные состояния приложения. */
struct _app_vars
{
    MSDtmfGenCustomTone dtmf_cfg; /* Настройки тестового сигнала генератора. */
    MSFilter* recorder;           /* Указатель на фильтр регистратор. */
    bool_t file_is_open;          /* Флаг того, что файл для записи открыт. */
    bool_t en_gen;                /* Включить звуковой генератор. */    
    bool_t en_rec;                /* Включить запись в файл. */    
    MSFactory *mf;                /* Фабрика фильтров медиастримера. */
	MSSndCardManager *scm;        /* Менеджер звуковых карт. */
    char cards_count;             /* Количество доступных звуковых карт. */
	const char **cards;           /* Список доступных звуковых карт. */
    char* script_preambula_name;  /* Файл преамбулы  скрипта. */
    char* script_body_name;       /* Файл основной части скрипта. */
};

typedef struct _app_vars app_vars;

/*----------------------------------------------------------------------------*/
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
            printf("  %s, developed  by Igor Plastov\nigor.plastov@yandex.ru\n\n", p);
            printf("--help      List of options.\n");
            printf("--version   Version of application.\n");
            printf("--scp       Full name of containing preambula of Lua-script file.\n");
            printf("--scb       Full name of containing body of Lua-script file.\n");
            printf("--gen       Set generator's frequency, Hz. Soundcard input will be ignored.\n");
            printf("--rec       Make recording to a file './record.wav'.\n");
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
            v -> en_gen = TRUE;
            int freq = atoi(argv[i+1]);
            v -> dtmf_cfg.frequencies[0] = freq;
            printf("Generator's frequency: %i Hz\n", v -> dtmf_cfg.frequencies[0]);
        }

         if (!strcmp(argv[i], "--rec"))
        {
            v -> en_rec = TRUE;
            printf("Recording enabled: %i\n", v -> en_rec);
        }
    }
}

/*----------------------------------------------------------------------------*/
/* Функция возвращает текст скрипта, прочитанный из файла. */
char* get_file(char *filename) {
    struct stat file_status;
    if (stat(filename, &file_status) < 0) {
        return NULL;
    }
    char* res = NULL;
    const size_t file_size  = file_status.st_size;
    char* buf =  ms_malloc0(file_size + 1);
    FILE* f = fopen( filename, "r"); 
    size_t read_res = fread(buf, 1, file_size, f); 
    fclose(f);
    if ((read_res > 0) && (read_res <= file_size))
    {
        printf("\nScript's code <%s>:\n{\n%s\n}\nwill be loaded to lua-filter.\n\n", 
                  filename, buf);
        /* Память выделенная под buf будет освобождена самим методом фильтра. */          
        res = buf;
    }
    return res;
}

/*----------------------------------------------------------------------------*/
/* Функция загрузки основной части (тела) скрипта. */
static void load_script_body(app_vars *v, MSFilter* filter)
{
    if (!v->script_body_name) return;

    char *buf = get_file(v->script_body_name);
    if (buf)
    {
        ms_filter_call_method(filter, LUA_FILTER_RUN, &buf);
    }
    else
    {
        printf("Script's body <%s> was not loaded.\n",
                v->script_body_name);
    }
}

/*----------------------------------------------------------------------------*/
/* Функция загрузки преамбулы скрипта. */
static void load_script_preambula(app_vars *v, MSFilter* filter)
{
    if (!v->script_preambula_name) return;

    char *buf = get_file(v->script_preambula_name);
    if (buf)
    {
        ms_filter_call_method(filter, LUA_FILTER_SET_PREAMBLE, &buf);
    }
    else
    {
        printf("Script's preambula <%s> was not loaded.\n",
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
    vars.mf = ms_factory_new();
	ms_factory_init_voip(vars.mf);

    vars.scm = ms_factory_get_snd_card_manager(vars.mf);
    build_sound_cards_table(&vars);

    /* Устанавливаем настройки настройки программы в 
     * соответствии с аргументами командной строки. */
    scan_args(argc, argv, &vars);

    /* Создаем экземпляры фильтров передающего тракта. */
    printf("Will be used soundcard:\n<\n%s\n>\n", vars.cards[DEF_CARD]);
    MSSndCard *snd_card =
	ms_snd_card_manager_get_card(vars.scm, vars.cards[DEF_CARD]);

    MSFilter *snd_card_read = ms_snd_card_create_reader(snd_card);
    MSFilter *snd_card_write = ms_snd_card_create_writer(snd_card);
    
    MSFilter *voidsource = ms_factory_create_filter(vars.mf, MS_VOID_SOURCE_ID);
    MSFilter *dtmfgen = ms_factory_create_filter(vars.mf, MS_DTMF_GEN_ID);

    /* Регистрируем наш Lua-фильтр. */
	ms_factory_register_filter(vars.mf, &lua_filter_desc);
    
    MSFilter *lua_filter = ms_factory_create_filter(vars.mf, LUA_FILTER_ID);

    /* Создаем фильтр регистратора. */
    MSFilter *recorder=ms_factory_create_filter(vars.mf, MS_FILE_REC_ID);
    vars.recorder = recorder; 
    
    MSFilter *tee=ms_factory_create_filter(vars.mf, MS_TEE_ID);

    /* Создаем источник тактов - тикер. */
    MSTicker *ticker = ms_ticker_new();

    /* Соединяем фильтры согласно схеме. */
    if (vars.en_gen)
    {
     ms_filter_link(voidsource, 0, dtmfgen, 0);
     ms_filter_link(dtmfgen, 0, lua_filter, 0);
     ms_filter_link(lua_filter, 0, tee, 0);
    
     ms_filter_call_method(dtmfgen, MS_DTMF_GEN_PLAY_CUSTOM,
                    (void*)&vars.dtmf_cfg);
    }
    else
    {
     ms_filter_link(snd_card_read, 0,lua_filter, 0);
     ms_filter_link(lua_filter, 0, tee, 0);
    }
    
    ms_filter_link(tee, 0, recorder, 0);
    ms_filter_link(tee, 1, snd_card_write, 0);

    /* Устанавливаем преамбулу Lua-фильтра. */
    load_script_preambula(&vars, lua_filter);

    /* Подключаем источник тактов. */
    if (vars.en_gen)
    {
    ms_ticker_attach(ticker, voidsource);
    }
    else
    {
    ms_ticker_attach(ticker, snd_card_read);
    }

    load_script_body(&vars, lua_filter);

    if ( vars.en_rec ) 
    {
        char* recording_name = "record.raw";
        printf ("File for recording <%s>.\n", recording_name);
        ms_filter_call_method(recorder, MS_FILE_REC_OPEN, recording_name );
        ms_filter_call_method(recorder, MS_FILE_REC_START, 0);
    }
    /* Если настройка частоты генератора отлична от нуля, то запускаем 
    генератор. */   
    if (vars.en_gen)
    {
        /* Настраиваем структуру, управляющую выходным сигналом генератора. */
        strncpy(vars.dtmf_cfg.tone_name, "sound", 
                sizeof(vars.dtmf_cfg.tone_name));
        vars.dtmf_cfg.duration = 10000;
        vars.dtmf_cfg.amplitude = 1.0;
        vars.dtmf_cfg.frequencies[1]=0;
        vars.dtmf_cfg.amplitude = 1.0;
        vars.dtmf_cfg.interval = 0.;
        vars.dtmf_cfg.repeat_count = 0.;

        /* Запускаем генератор. */
        ms_filter_call_method(dtmfgen, MS_DTMF_GEN_PLAY_CUSTOM,
                          (void *)&vars.dtmf_cfg);
        printf("Sound from generator lasts %i ms.\n", vars.dtmf_cfg.duration);
    }

    printf("Press ENTER to exit.\n ");
    char c=getchar();
    while(c != '\n')
    {
        ms_usleep(500000);
        c=getchar();
    }
    if (vars.en_rec ) 
    {
        /* Завершаем запись в файл. */
        ms_filter_call_method(recorder, MS_FILE_REC_CLOSE, 0);
        printf("File recording was finished.\n");
    }
}