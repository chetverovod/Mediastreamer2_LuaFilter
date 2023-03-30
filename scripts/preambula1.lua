-- preambula2.lua 
-- Этот скрипт выполняется в Lua-фильтре как преамбула. 
preambula_status = 0
body_status = 0 -- Эта переменная будет инкрементироваться в теле скрипта.
local greetings = 'Hello world from preambula!\n' -- Приветствие.
print(greetings)
return preambula_status 