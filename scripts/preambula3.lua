-- preambula3.lua 
-- Этот скрипт выполняется в Lua-фильтре как преамбула.

-- Подключаем файл с функциями доступа к данным.
require "funcs"

preambula_status = 0
body_status = 0 -- Эта переменная будет инкрементироваться в теле скрипта.

-- Переменные для расчетов.
samples_count = 0 
sampling_rate = 8000
low_frequency = 2 -- Модулирующая частота.
phase_step = 2 * math.pi / sampling_rate * low_frequency 
return preambula_status 