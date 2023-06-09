# Mediastreamer2_LuaFilter
Implementation of  Mediastreamer2 filter with Lua-machine inside.

[Github](https://github.com/chetverovod/Mediastreamer2_LuaFilter)

## Project description:
[English](https://medium.com/@chetverovod/lua-machine-embedding-to-the-mediastreamer2s-filter-ca0050acaa18)

[Russian](https://habr.com/ru/articles/728188/)



You can read prehistory in my Medium blog (English):
 https://medium.com/gitconnected/whats-mediastreamer2-80fa1c5e617

or Habr blog (Russian):
 https://habr.com/ru/post/495702/


## Preparations
Use Linux, make installationf of dependancies and tools: 

```
apt-get update
apt-get install -y \
    libmediastreamer-dev \
    libortp-dev \
    pulseaudio \
    gcc \
    gdb \
    pkg-config \
    make \
    lua5.3 \
    lua5.3-dev \
    liblua5.3 
```
then make clone of project to your home directory:

```
git clone git@github.com:chetverovod/Mediastreamer2_LuaFilter.git

```

## Building demo application
```
$ cd ./src
$ make all
```

## Run demo application
```
$ ./lua_filter_demo --scb ../scripts/body2.lua  --scp ../scripts/preambula2.lua
```
