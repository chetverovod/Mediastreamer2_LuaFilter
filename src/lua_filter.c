#include "lua_filter.h"
  
//------------------------------------------------------------------------------
static int
l_my_print (lua_State* L)
{
  int nargs = lua_gettop (L);

  for (int i = 1; i <= nargs; i++)
    {
      if (lua_isstring (L, i))
	{
	  /* Pop the next arg using lua_tostring(L, i) and do your print */
	  const char *str = lua_tostring (L, lua_gettop (L));
	  printf ("%s", str);

	}
      else
	{
	  /* Do something with non-strings if you like */
	}
    }

  return 0;
}

//------------------------------------------------------------------------------
static const struct luaL_Reg printlib[] = {
  {"print", l_my_print},
  {NULL, NULL}			/* end of array */
};

//------------------------------------------------------------------------------
int
luaopen_luamylib (lua_State* L)
{
  lua_getglobal (L, "_G");
  luaL_setfuncs (L, printlib, 0);	// for Lua versions 5.2 or greater
  lua_pop (L, 1);
  return 0;
}

//------------------------------------------------------------------------------

typedef struct _ControlData
{
  lua_State* L;
  char *script_preamble;	// Скрипт, который выполняется один раз, выполняя предварительные действия.
  char *script_code;		// Скрипт, который выполняется циклически, по каждому тику.
  char *result;
  bool_t stopped; // Флаг того, что Lua-машина остановлена.
  bool_t preabmle_was_run; // Флаг того, что преамбула уже была выполнена.
  char padding[6];
} ControlData;

void
set_queues (MSFilter * f)
{
MS_UNUSED(f);
}

static void
control_init (MSFilter * f)
{
  ControlData *cd = ms_new0 (ControlData, 1);
  f->data = cd;
  cd->result = NULL;
  cd->L = luaL_newstate ();	// Создаем экземпляр виртуальной машины Lua.
  luaL_openlibs (cd->L);	// Загружаем стандартные библиотеку.
  luaopen_luamylib (cd->L);
}

static void
control_uninit (MSFilter * f)
{
  ControlData *cd = (ControlData *) f->data;
  lua_close (cd->L);		// Останавливаем Lua-машину.
  ms_free (cd->script_code);
  ms_free (cd->script_preamble);
  ms_free (cd->result);
  ms_free (cd);
}

static void
control_process (MSFilter * f)
{
  ControlData *d = (ControlData *) f->data;
  mblk_t *im;
  mblk_t *out_im = NULL;
  int err = 0;
  int i;

  if ((!d->stopped) && (!d->preabmle_was_run))
    {
      if (d->script_preamble)
	{
	  // Выполняем скрипт преамбулы.	
	  err = luaL_dostring (d->L, d->script_preamble);
	  if (err)
	    {
	      printf ("filter <%s> Lua script preamble error.\n",
		       f->desc->name);
	      const char *answer = lua_tostring (d->L, lua_gettop (d->L));
	      if (answer)
		{
		  printf ("Error description:<%s>\n", answer);
		}
	    }
	  else
	    {
	      d->preabmle_was_run = TRUE;
	    }
	}
      else
	{
	  // Если преамбула не определена, то просто ставим флаг, что она выполнена.
	  d->preabmle_was_run = TRUE;
	}
    }

  while ((im = ms_queue_get (f->inputs[0])) != NULL)
    {
      unsigned int disabled_out = 0;
      if ((!d->stopped) && (d->script_code) && (d->preabmle_was_run))
	{
	  bool_t input_empty = ms_queue_empty (f->inputs[0]);
	  lua_pushinteger (d->L, (lua_Integer) input_empty);
	  lua_setglobal (d->L, LUA_FILTER_INPUT_EMPTY);
      //vs_tag* tag = NULL;
	  /*
	  if (is_vs_tag (im->b_rptr))
	    {
	      // Блок данных имеет тег в начале, по тегу выбираем способ, каким
	      // данные блока будут помещены в Lua-машину.
	      gboolean unknown_tag = TRUE;
	      size_t sz = (size_t) msgdsize (im) - vs_tag_sz;
          tag = (vs_tag *) (void *) im->b_rptr;

	      lua_pushstring (d->L, tag->type);
	      lua_setglobal (d->L, VS_SRC_TAG_TYPE);

	      lua_pushstring (d->L, tag->sub_type);
	      lua_setglobal (d->L, VS_SRC_TAG_SUBTYPE);

	      // Передача в Lua-машину блока данных помеченного как Ethernet-пакет.
	      if (!strcmp (tag->type, ETH_TAG_TYPE))
		{
		  unknown_tag = FALSE;

		  lua_pushstring (d->L, tag->ip_addr);
		  lua_setglobal (d->L, LUA_FILTER_SRC_ADDR);

		  lua_pushinteger (d->L, tag->port);
		  lua_setglobal (d->L, LUA_FILTER_SRC_PORT);
		}

	      // Передача в Lua-машину блока данных помеченного как событие.
	      if (!strcmp (tag->type, EVENT_TAG_TYPE))
		{
		  unknown_tag = FALSE;

		  gint64 mtime = g_get_monotonic_time ();
		  double event_detection_moment =
		    (double) (mtime - tag->base_time) / 1E6;

		  lua_pushnumber (d->L, event_detection_moment);
		  lua_setglobal (d->L, LUA_FILTER_EVENT_TIME);

		  lua_pushstring (d->L, "");
		  lua_setglobal (d->L, LUA_FILTER_SRC_ADDR);

		  lua_pushinteger (d->L, 0);
		  lua_setglobal (d->L, LUA_FILTER_SRC_PORT);
		}

	      // Передача в Lua-машину блока данных c незнакомым тэгом.
	      if (unknown_tag)
		{
		}
	      lua_pushinteger (d->L, (lua_Integer) sz);
	      lua_setglobal (d->L, LUA_FILTER_DATA_LEN);

	      lua_pushlstring (d->L, (const char *) (im->b_rptr + vs_tag_sz),
			       sz);

	      lua_pushinteger (d->L, 0);
	      lua_setglobal (d->L, LUA_FILTER_REMOVE_TAG_CONST);
	    }
	  else */
	    {
	      // Если блок данных не имеет тега.
	      lua_pushstring (d->L, "");
	  /*   
		  lua_setglobal (d->L, VS_SRC_TAG_TYPE);

	      lua_pushstring (d->L, "");
	      lua_setglobal (d->L, VS_SRC_TAG_SUBTYPE);

	      lua_pushstring (d->L, "");
	      lua_setglobal (d->L, LUA_FILTER_SRC_ADDR);

	      lua_pushinteger (d->L, 0);
	      lua_setglobal (d->L, LUA_FILTER_SRC_PORT);

*/
	      size_t sz = (size_t) msgdsize (im);
	      lua_pushinteger (d->L, (lua_Integer) sz);
	      lua_setglobal (d->L, LUA_FILTER_DATA_LEN);
	      lua_pushlstring (d->L, (const char *) im->b_rptr, sz);
	    }

	  lua_setglobal (d->L, LUA_FILTER_DATA);
            // Выполняем основной скрипт.
	  err = luaL_dostring (d->L, d->script_code);


	  if (err)
	    {
	      printf ("\nFilter <%s> Lua error.\n", f->desc->name);
	      const char *answer = lua_tostring (d->L, lua_gettop (d->L));
	      if (answer)
		{
		  printf ("Lua error description:<%s>.\n", answer);
		}
	    }
	  else
	    {
	     // int top;
	     // (void) top;
	     // top = lua_gettop (d->L);
	      // Извлекаем текстовую строку сообщения,
	      // если скрипт её вернул по return.

	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TSTRING)
		{
		  char *c = lua_tostring (d->L, lua_gettop (d->L));

		  d->result = c;
		}
		  //d->result = c;

	      lua_pop (d->L, 1);
	      // top = lua_gettop (d->L);
	      lua_getglobal (d->L, LUA_FILTER_DATA_OUT);
	      lua_getglobal (d->L, LUA_FILTER_DATA_OUT_LEN);
	      //lua_getglobal (d->L, LUA_FILTER_SRC_ADDR);
	      //lua_getglobal (d->L, LUA_FILTER_SRC_PORT);
	      //lua_getglobal (d->L, LUA_FILTER_REMOVE_TAG_CONST);
	      lua_getglobal (d->L, LUA_FILTER_DISABLE_OUT);

	      // top = lua_gettop (d->L);
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TNUMBER)
		{		// Извлекаем флаг запрета отправки блока данных.
		  disabled_out =
		    (unsigned short) lua_tointeger (d->L, lua_gettop (d->L));
		}

	      lua_pop (d->L, 1);
	      // top = lua_gettop (d->L);
		  /*
	     unsigned short remove_tag = 0;
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TNUMBER)
		{		// Извлекаем флаг использования тега.
		  remove_tag =
		    (unsigned short) lua_tointeger (d->L, lua_gettop (d->L));
		}

	      lua_pop (d->L, 1);
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TNUMBER)
		{		// Извлекаем номер порта.
		  unsigned short port =
		    (unsigned short) lua_tointeger (d->L, lua_gettop (d->L));
		  if (tag)
		    tag->port = port;
		}
*/
	 
	 /*
	      // Извлекаем текстовую строку содержащую IP-адрес.
	      lua_pop (d->L, 1);
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TSTRING)
		{
		  const char *new_addr =
		    lua_tostring (d->L, lua_gettop (d->L));

		  // Обновляем адрес, по которому должен уйти пакет.
		  {
		    if (tag)
		      strncpy (tag->ip_addr, new_addr,
			       MIN (strlen (new_addr), ETH_ADDR_LEN - 1));
		  }
		}
*/
	      // Извлекаем размер выходного сообщения.
	      size_t real_size = 0;
	      lua_pop (d->L, 1);
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TNUMBER)
		{
		  real_size =
		    (size_t) lua_tointeger (d->L, lua_gettop (d->L));
		}

	      // Извлекаем длинную строку с преобразованными данными входного пакета.
	      // И пробрасываем его далее.
	      lua_pop (d->L, 1);
	      // top = lua_gettop (d->L);
	      size_t msg_len = 0;
	      if (lua_type (d->L, lua_gettop (d->L)) == LUA_TSTRING)
		{
		  const char *msg_body = lua_tolstring (d->L, 1, &msg_len);
		  if (msg_body && msg_len)
		    {
		      msg_len = real_size;
		      
			  
			 /* 
			  if (tag)
			{
			  if ((!remove_tag))
			    {
			      out_im =
				allocb ((int) (msg_len + vs_tag_sz), 0);
			      memcpy (out_im->b_wptr, tag, vs_tag_sz);
			      out_im->b_wptr = out_im->b_wptr + vs_tag_sz;
			    }
			  else
			    {
			      out_im = allocb ((int) (msg_len), 0);
			    }
			  memcpy (out_im->b_wptr, msg_body, msg_len);
			  out_im->b_wptr = out_im->b_wptr + msg_len;
			}
		      else*/
			{
			  out_im = allocb ((int) msg_len, 0);
			  memcpy (out_im->b_wptr, msg_body, msg_len);
			  out_im->b_wptr = out_im->b_wptr + msg_len;
			}
		    }
		}

	      // Вычитываем и отбрасываем все, что возможно осталось на стеке.
	      while (lua_gettop (d->L))
		{
		  lua_pop (d->L, 1);
		  lua_tostring (d->L, lua_gettop (d->L));
		}
	    }
	}
      mblk_t *p = im;
      if (out_im)
	p = out_im;
      if (d->script_code)
	{
	  for (i = 0; i < f->desc->noutputs; i++)
	    {
	      if ((!disabled_out) && (f->outputs[i] != NULL) && !d->stopped)
		if (p)
		  ms_queue_put (f->outputs[i], dupmsg (p));
	    }
	}
      freemsg (out_im);
      freemsg (im);
    }
}

static int
control_stop (MSFilter * f, void *arg)
{
  ControlData *d = (ControlData *) f->data;
  d->stopped = TRUE;
  if (arg)
    {
      if (d->script_code)
       ms_free (d->script_code);
       d->script_code = ms_strdup (*(char **) arg);
       ms_free(*(char **) arg);
    }
  return 0;
}

static int
control_run (MSFilter * f, void *arg)
{
  ControlData *d = (ControlData *) f->data;
  d->stopped = FALSE;
  if (arg)
    {
      if (d->script_code)
      ms_free (d->script_code);
      d->script_code = ms_strdup (*(char **) arg);
      ms_free(*(char **) arg);
    }
  return 0;
}


static int
control_set_preamble (MSFilter * f, void *arg)
{
  ControlData *d = (ControlData *) f->data;
  d->preabmle_was_run = FALSE;
  if (arg)
    {
      if (d->script_preamble)
	ms_free (d->script_preamble);
      d->script_preamble = ms_strdup (*(char **) arg);
      ms_free(*(char **) arg);
    }
  return 0;
}

static int
control_get_result (MSFilter * f, void *arg)
{
  ControlData *d = (ControlData *) f->data;
  if (arg)
    {
      // Возвращаем ответ скрипта, обрезая все, что длинее SCRIPT_ANSWER_SIZE байт.
      if (d->result)
	memcpy (arg, d->result, strlen(d->result) % SCRIPT_ANSWER_SIZE);
    }
  return 0;
}

static MSFilterMethod control_methods[] = {
  {LUA_FILTER_STOP, control_stop},
  {LUA_FILTER_RUN, control_run},
  {LUA_FILTER_GET_RESULT, control_get_result},
  {LUA_FILTER_SET_PREAMBLE, control_set_preamble},
  {0, NULL}
};

#ifdef _MSC_VER

MSFilterDesc lua_filter_desc = {
  LUA_FILTER_ID,
  "lua_filter",
  N_("A filter that runs a Lua script."),
  MS_FILTER_OTHER,
  NULL,
  1,
  1,
  control_init,
  NULL,
  control_process,
  NULL,
  control_uninit,
  control_methods
};

#else

MSFilterDesc lua_filter_desc = {
  .id = (MSFilterId) LUA_FILTER_ID,
  .name = "LUA_FILTER",
  .text = ("A filter that runs a Lua script."),
  .category = MS_FILTER_OTHER,
  .ninputs = 1,
  .noutputs = 1,
  .init = control_init,
  .process = control_process,
  .uninit = control_uninit,
  .methods = control_methods
};

#endif

MS_FILTER_DESC_EXPORT (lua_filter_desc)