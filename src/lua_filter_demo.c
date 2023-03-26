/* Файл mstest9.c Имитатор переговорного устройства c регистратором и
 * нойзгейтом. */

#include <mediastreamer2/mssndcard.h>
#include <mediastreamer2/dtmfgen.h>
//#include <mediastreamer2/msrtp.h>
#include <mediastreamer2/msfilerec.h>
#include <mediastreamer2/mscommon.h>
#include <mediastreamer2/msfactory.h>
#include <mediastreamer2/msticker.h>
//#include <mediastreamer2/mssndcard.h>


/* Подключаем наш фильтр. */
#include "lua_filter.h"

/* Подключаем файл общих функций. */
// #include "mstest_common.c"

/*----------------------------------------------------------*/
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
    char* script_name;      /* Файл основного скрипта. */
};

typedef struct _app_vars app_vars;

/*----------------------------------------------------------*/
/* Функция преобразования аргументов командной строки в 
 * настройки программы. */
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
            printf("--scn       Full name of Lua-script.\n");
            printf("--port      Remote abonent port number.\n");
            printf("--lport     Local port number.\n");
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

        if (!strcmp(argv[i], "--scn"))
        {
            v->script_name = ms_strdup(argv[i+1]);
            printf("Lua-script_name: %s\n", v->script_name);
        }
/*
        if (!strcmp(argv[i], "--addr"))
        {
            strncpy(v->remote_addr, argv[i+1], 16);
            v->remote_addr[16]=0;
            printf("remote addr: %s\n", v->remote_addr);
        }

        if (!strcmp(argv[i], "--port"))
        {
            v->remote_port=atoi(argv[i+1]);
            printf("remote port: %i\n", v->remote_port);
        }

        if (!strcmp(argv[i], "--lport"))
        {
            v->local_port=atoi(argv[i+1]);
            printf("local port : %i\n", v->local_port);
        }
*/
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
/* Функция загрузки скриптов преамбулы и тела. */
static void load_script(app_vars *v, MSFilter* filter)
{
    if (!v->script_name) return;
    FILE* f = fopen(v->script_name, "r"); 
    const size_t body_sz = 1024;
    char body[body_sz + 1];
    memset(body, 0, body_sz +1);
    size_t read_res = fread(body, 1, body_sz, f); 
    fclose(f);
    if ((read_res > 0) && (read_res <= body_sz))
    {
        printf("Script <%s>: <\n%s\n> will be loaded to lua-filter.\n", v->script_name, body);
        char* cpy= ms_strdup (body); // Эта копия будет удалена фильтром.
        ms_filter_call_method(filter, LUA_FILTER_RUN, &cpy);
    }
    else
    {
        printf("Script <%s> is out of buffer, dropped.\n", v->script_name);
    }
}

/*----------------------------------------------------------------------------*/
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
    //c -> snd_card = ms_snd_card_manager_get_card(v -> scm, v -> cards[c -> card_id]);
}

#define DEF_CARD 0
/*----------------------------------------------------------*/
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
    
    MSFilter *nash = ms_factory_create_filter(vars.mf, LUA_FILTER_ID);

    /* Создаем фильтр регистратора. */
    MSFilter *recorder=ms_factory_create_filter(vars.mf, MS_FILE_REC_ID);
    vars.recorder = recorder; 

    /* Соединяем фильтры приёмного тракта. */
    ms_filter_link(snd_card_read, 0, dtmfgen, 0);
    ms_filter_link(dtmfgen, 0, nash, 0);
    ms_filter_link(nash, 0, recorder, 0);
    
    /* Устанавливаем преамбулу Lua-фильтра. */
    char* cpy = ms_strdup ("print(\"Hello from preambula!\\n\")"); // Эта копия будет удалена фильтром.
    ms_filter_call_method(nash, LUA_FILTER_SET_PREAMBLE, &cpy);

    /* Подключаем к фильтру функцию обратного вызова, и передаем ей в
     * качестве пользовательских данных указатель на структуру с настройками
     * программы, в которой среди прочих есть указать на фильтр
     * регистратора. */
//    ms_filter_set_notify_callback(nash,
//            (MSFilterNotifyFunc)change_detected_cb, &vars);
    // ms_filter_call_method(nash,LUA_FILTER_SET_TRESHOLD, &vars.treshold); 

    /* Создаем источник тактов - тикер. */
    MSTicker *ticker = ms_ticker_new();

    /* Подключаем источник тактов. */
    ms_ticker_attach(ticker, snd_card_read);

    load_script(&vars, nash);


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