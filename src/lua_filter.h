#ifndef lua_filter_h
#define lua_filter_h

#include <mediastreamer2/msfilter.h>
#include <time.h>

/* Подключаем интерпретатор Lua. */
#include <lua5.3/lua.h>
#include <lua5.3/lauxlib.h>
#include <lua5.3/lualib.h>

/* Подключаем заголовочный файл с перечислением фильтров медиастримера. */
#include <mediastreamer2/msticker.h>

/* 
   Задаем числовой идентификатор нового типа фильтра. Это число не должно
   совпадать ни с одним из других типов.  В медиастримере  в файле allfilters.h
   есть соответствующее перечисление enum MSFilterId. К сожалению, непонятно
   как определить максимальное занятое значение, кроме как заглянуть в этот
   файл. Но мы возьмем в качестве id для нашего фильтра заведомо большее
   значение: 4001.   Будем полагать, что разработчики добавляя новые фильтры, не
   скоро доберутся до этого номера.  
   */
#define LUA_FILTER_ID 4001

#define LUA_FILTER_DATA_CONST       "lf_data"
#define LUA_FILTER_DATA_LEN_CONST   "lf_data_len"
#define LUA_FILTER_DATA_OUT_CONST   "lf_data_out"
#define LUA_FILTER_DATA_OUT_LEN_CONST "lf_data_out_len"

#define LUA_FILTER_INPUT_EMPTY_CONST "input_empty"   /// Флаг того, что входная очередь фильтра пуста.
#define LUA_FILTER_DISABLE_OUT_CONST "disable_out"   /// Флаг того, что фильтр не должен отправлять сообщение, изменяется скриптом Lua.

/*
   Определяем макимальный размер данных, который метод фильтра  может вернуть.
*/
#define SCRIPT_ANSWER_SIZE_CONST 1024

 /* 
   Определяем константы фильтра.
 */ 
#define SCRIPT_ANSWER_SIZE       SCRIPT_ANSWER_SIZE_CONST
#define LUA_FILTER_DATA          LUA_FILTER_DATA_CONST
#define LUA_FILTER_DATA_LEN      LUA_FILTER_DATA_LEN_CONST
#define LUA_FILTER_DATA_OUT      LUA_FILTER_DATA_OUT_CONST
#define LUA_FILTER_DATA_OUT_LEN  LUA_FILTER_DATA_OUT_LEN_CONST
#define LUA_FILTER_INPUT_EMPTY   LUA_FILTER_INPUT_EMPTY_CONST
#define LUA_FILTER_DISABLE_OUT   LUA_FILTER_DISABLE_OUT_CONST

/* 
   Определяем методы нашего фильтра. Вторым параметром макроса должен
   порядковый номер метода, число от 0.  Третий параметр это тип аргумента
   метода, указатель на который будет передаваться методу при вызове. У методов
   аргументов может и не быть, как показано ниже. 
*/
#define LUA_FILTER_RUN	      MS_FILTER_METHOD(LUA_FILTER_ID,0,char)
#define LUA_FILTER_STOP        MS_FILTER_METHOD(LUA_FILTER_ID,1,int)
#define LUA_FILTER_GET_RESULT MS_FILTER_METHOD(LUA_FILTER_ID,2,char)
#define LUA_FILTER_SET_PREAMBLE MS_FILTER_METHOD(LUA_FILTER_ID,3,char)

/* Определяем экспортируемую переменную, которая будет
   хранить характеристики для данного типа фильтров.
*/
extern MSFilterDesc lua_filter_desc;

#endif /* lua_filter_h */