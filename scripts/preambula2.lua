-- preambula2.lua 
-- Этот скрипт выполняется в Lua-фильтре как преамбула. 

-- Подключаем файл с функциями доступа к данным.
require "funcs"

preambula_status = 0
body_status = 0 -- Эта переменная будет инкрементироваться в теле скрипта.
local greetings = 'Hello world from preambula!\n' -- Приветствие.
print(greetings)
t = 0  

return preambula_status 