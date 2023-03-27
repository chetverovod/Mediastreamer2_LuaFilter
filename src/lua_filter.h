#ifndef lua_filter_h
#define lua_filter_h

/* Подключаем заголовочный файл с перечислением фильтров медиастримера. */
#include <mediastreamer2/msfilter.h>

/* Подключаем интерпретатор Lua. */
#include <lua5.3/lua.h>
#include <lua5.3/lauxlib.h>
#include <lua5.3/lualib.h>

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

/* Имя глобальной переменной, в которую функция фильтра помещает блок входных
   данных. */
#define LF_DATA_CONST       "lf_data"

/* Имя глобальной переменной, в которую функция фильтра помещает размер блока входных
   данных.*/
#define LF_DATA_LEN_CONST   "lf_data_len"

/* Имя глобальной переменной, в которую функция фильтра помещает блок выходных
   данных.*/
#define LF_DATA_OUT_CONST   "lf_data_out"

/* Имя глобальной переменной, в которую функция фильтра помещает размер блока выходных
   данных.*/
#define LF_DATA_OUT_LEN_CONST "lf_data_out_len"

/* Флаг того, что входная очередь фильтра пуста. */
#define LF_INPUT_EMPTY_CONST "input_empty"

/* Определяем максимальный размер скрипта и преамбулы. */
#define SCRIPT_SIZE_CONST 1024

/* Определяем константы фильтра. */ 
#define LF_DATA             LF_DATA_CONST
#define LF_DATA_LEN         LF_DATA_LEN_CONST
#define LF_DATA_OUT         LF_DATA_OUT_CONST
#define LF_DATA_OUT_LEN     LF_DATA_OUT_LEN_CONST
#define LF_INPUT_EMPTY      LF_INPUT_EMPTY_CONST

/* 
   Определяем методы нашего фильтра. Вторым параметром макроса должен
   порядковый номер метода, число от 0.  Третий параметр это тип аргумента
   метода, указатель на который будет передаваться методу при вызове.
*/
#define LUA_FILTER_RUN	        MS_FILTER_METHOD(LUA_FILTER_ID,0,char)
#define LUA_FILTER_STOP         MS_FILTER_METHOD(LUA_FILTER_ID,1,int)
#define LUA_FILTER_SET_PREAMBLE MS_FILTER_METHOD(LUA_FILTER_ID,2,char)

/* Определяем экспортируемую переменную, которая будет
   хранить характеристики для данного типа фильтров. */
extern MSFilterDesc lua_filter_desc;

#endif /* lua_filter_h */