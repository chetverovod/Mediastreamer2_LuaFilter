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
    //int  local_port;              /* Локальный порт. */
    //int  remote_port;             /* Порт переговорного устройства на удаленном компьютере. */
   // char remote_addr[128];        /* IP-адрес удаленного компьютера. */
    MSDtmfGenCustomTone dtmf_cfg; /* Настройки тестового сигнала генератора. */
    MSFilter* recorder;           /* Указатель на фильтр регистратор. */
    bool_t file_is_open;          /* Флаг того, что файл для записи открыт. */
    /* Порог, при котором прекращается запись принимаемого сигнала в файл. */
    float treshold; 
    bool_t en_rec;                /*Включить запись в файл.*/    
    MSFactory *mf;          /* Фабрика фильтров медиастримера. */
	MSSndCardManager *scm ; /* Менеджер звуковых карт. */
    char cards_count;       /* Количество доступных звуковых карт. */
	const char **cards;     /* Список доступных звуковых карт. */
};

typedef struct _app_vars app_vars;

/*----------------------------------------------------------*/
/* Создаем дуплексную RTP-сессию. */
/*
RtpSession* create_duplex_rtp_session(app_vars v)
{
    RtpSession *session = create_rtpsession (v.local_port, v.local_port + 1,
            FALSE, RTP_SESSION_SENDRECV);
    rtp_session_set_remote_addr_and_port(session, v.remote_addr, v.remote_port,
            v.remote_port + 1);
    rtp_session_set_send_payload_type(session, PCMU);
    return session;
}
*/
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
            printf("--addr      Remote abonent IP address string.\n");
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
    //app_vars vars={5004, 7010, "127.0.0.1", {0}, 0, 0, 0.01, 0};
    app_vars vars={0};
    vars.treshold =0.01;
    vars.mf = ms_factory_new();
	ms_factory_init_voip(vars.mf);
    build_sound_cards_table(&vars);

    /* Устанавливаем настройки настройки программы в 
     * соответствии с аргументами командной строки. */
    scan_args(argc, argv, &vars);

    ms_init();

    /* Создаем экземпляры фильтров передающего тракта. */
    MSSndCard *snd_card =
	ms_snd_card_manager_get_card(vars.scm, vars.cards[DEF_CARD]);

    MSFilter *snd_card_read = ms_snd_card_create_reader(snd_card);
    MSFilter *dtmfgen = ms_factory_create_filter(vars.mf, MS_DTMF_GEN_ID);
//    MSFilter *rtpsend = ms_filter_new(MS_RTP_SEND_ID);

    /* Создаем фильтр кодера. */
//    MSFilter *encoder = ms_filter_create_encoder("PCMU");

    /* Регистрируем типы нагрузки. */
    // register_payloads();

    /* Создаем дуплексную RTP-сессию. */
//    RtpSession* rtp_session = create_duplex_rtp_session(vars);
//    ms_filter_call_method(rtpsend, MS_RTP_SEND_SET_SESSION, rtp_session);

    /* Соединяем фильтры передатчика. */
//    ms_filter_link(snd_card_read, 0, dtmfgen, 0);
//    ms_filter_link(dtmfgen, 0, encoder, 0);
//    ms_filter_link(encoder, 0, rtpsend, 0);

    /* Создаем фильтры приемного тракта. */
//    MSFilter *rtprecv = ms_filter_new(MS_RTP_RECV_ID);
//    ms_filter_call_method(rtprecv, MS_RTP_RECV_SET_SESSION, rtp_session);

    /* Создаем фильтр декодера. */
//    MSFilter *decoder=ms_filter_create_decoder("PCMU");
    //MS_FILE_REC_ID

    /* Регистрируем наш фильтр. */
    /* Регистрируем наш кастомный фильтр. */
	ms_factory_register_filter(vars.mf, &lua_filter_desc);
    
    MSFilter *nash = ms_factory_create_filter(vars.mf, LUA_FILTER_ID);

    /* Создаем фильтр звуковой карты. */
   // MSFilter *snd_card_write = ms_snd_card_create_writer(snd_card);

    /* Создаем фильтр регистратора. */
    MSFilter *recorder=ms_factory_create_filter(vars.mf, MS_FILE_REC_ID);
    vars.recorder = recorder; 

    /* Соединяем фильтры приёмного тракта. */
    ms_filter_link(snd_card_read, 0, dtmfgen, 0);
    ms_filter_link(dtmfgen, 0, nash, 0);
    ms_filter_link(nash, 0, recorder, 0);

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
//    ms_ticker_attach(ticker, rtprecv);

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