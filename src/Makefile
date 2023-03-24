CC=gcc

APP = lua_filter_demo
COV_APP = lua_filter_democov
PROF_APP = lua_filter_demoprof
PROCESSOR_OPTIONS = -mms-bitfields
ARCHITECTURE = $(shell lscpu |grep Architecture|sed 's/Architecture://g'|sed 's/ //g')
ARM = aarch64

ifeq ($(ARCHITECTURE),$(ARM))
# For RASPBERRY
PROCESSOR_OPTIONS = -DRASPBERRY
endif

# Информация для добавления в сборку информации о билде.
GIT_VERSION = "$(shell git describe --abbrev=4 --dirty --always --tags)"

#gcc example1.c -pg -o example1 -O2 -lc

# Должна быть установлена переменная окружения:
# PKG_CONFIG_PATH=C:/opt/gtk/lib/pkgconfig

#  Нормальная сборка.
 CFLAGS =$(PROCESSOR_OPTIONS)  -v -save-temps  -Wall -ggdb -DGSEAL_ENABLE -DGTK_DISABLE_SINGLE_INCLUDES -DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED -Wfatal-errors \$(shell pkg-config gmodule-2.0 glib-2.0 gobject-2.0 gio-2.0 gio-unix-2.0 mediastreamer ortp --cflags) -DBUILD_INFO=\"$(GIT_VERSION)\" -Wl,--build-id=none  -Werror


#  Поиск утечек памяти.
#CFLAGS =$(PROCESSOR_OPTIONS)  -v -save-temps  -fsanitize=leak -Wall -Wextra -pedantic -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -ggdb -DGSEAL_ENABLE -DGTK_DISABLE_SINGLE_INCLUDES -DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED -Wfatal-errors \$(shell pkg-config gmodule-2.0 glib-2.0 gobject-2.0 gio-2.0 mediastreamer ortp  --cflags) -DBUILD_INFO=\"$(GIT_VERSION)\"


$(COV_APP):  CFLAGS =$(PROCESSOR_OPTIONS) -Wall -ggdb -DGSEAL_ENABLE -DGTK_DISABLE_SINGLE_INCLUDES -DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED -Wfatal-errors  -DCOVERAGE_BUILD --coverage $(shell pkg-config gmodule-2.0 glib-2.0 gobject-2.0 gio-2.0 mediastreamer ortp --cflags) -DBUILD_INFO=\"$(GIT_VERSION)\"

CPPFLAGS =$(CFLAGS)

COV_CPPFLAGS =$(CFLAGS)

PROF_CPPFLAGS =$(CFLAGS)

LDLIBS = $(CFLAGS) $(shell  pkg-config  gthread-2.0 gmodule-2.0 glib-2.0 gobject-2.0 gio-2.0 gio-unix-2.0 mediastreamer   --libs) \
  -Xlinker --allow-multiple-definition -lm -v

COV_LDLIBS = --coverage $(LDLIBS) -lgcov 
PROF_LDLIBS = -pg $(LDLIBS) -O2  -lc 
resources.o: xrtpcheck.rc

SOURCES.c = lua_filter_demo.c chunker_filter.c app_state.c

COV_SOURCES.c = lua_filter_demo.c chunker_filter.c app_state.c 

PROF_SOURCES.c = lua_filter_demo.c chunker_filter.c app_state.c



OBJECTS= $(SOURCES.c:.c=.o) 
COV_OBJECTS= $(COV_SOURCES.c:.c=.o)
PROF_OBJECTS= $(PROF_SOURCES.c:.c=.o)

.PHONY:  all, clean

.DEFAULT_GOAL:=update_version

update_version:
	$(CC) -v

all: $(APP) $(STIM_APP)  $(CLIENT_APP)


cov: $(COV_APP) $(COV_STIM_APP)

prof: $(PROF_APP)

clean:
	rm *.o
	rm *.i
	rm *.s
	rm *.gcda
	rm *.gcno
	rm *.deb


$(APP): $(OBJECTS) 
	$(LINK.o) $^ $(LDLIBS)  $(CPPFLAGS) -o $@

$(COV_APP): $(COV_OBJECTS) 
	$(LINK.o) $^ $(COV_LDLIBS)  $(COV_CPPFLAGS) -o $@

$(PROF_APP): $(PROF_OBJECTS) 
	$(LINK.o) $^ $(PROF_LDLIBS)  $(PROF_CPPFLAGS) -o $@

commit:
	git commit -m "Commit before installator assembly." -a

deb: 
	./create_deb_ballista_recorder.sh

arc:
	./archiver.sh

verify:
	@echo 'Check architecture:'
	@echo "ARCHITECTURE=$(ARCHITECTURE)"
	@echo "PROCESSOR_OPTIONS=$(PROCESSOR_OPTIONS)"
