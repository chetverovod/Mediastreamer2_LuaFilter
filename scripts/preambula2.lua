-- preambula2.lua 
-- Этот скрипт выполняется в Lua-фильтре как преамбула. 
preambula_status = 0
body_status = 0 -- Эта переменная будет инкрементироваться в теле скрипта.
local greetings = 'Hello world from preambula!\n' -- Приветствие.
print(greetings)


function get_sample(s, sample_index) 
  local byte_index = 2*sample_index
  local v1 = string.byte(s, byte_index - 1)
  local v2 = string.byte(s, byte_index)
  print ("byte_index=" .. tostring(byte_index) .. "\n")
  print ("s=" .. tostring(byte_index) .. "\n")
  print ("v1=" .. tostring(v1) .. "\n")
  print ("v2=" .. tostring(v2) .. "\n")
  local v = v1 + 256 * v2
  return v
end 

function append_sample(s, sample_value)
  local v = math.modf(sample_value)   
  if v == nil then
    print("v=nil")
  end

  local c2 = v // 256
  local c1 = v- c2 * 256
  print("val = ")
  print(v)
  print("\n")
  print(c1)
  print("\n")
  print(c2)
  print("\n")
  return  s .. string.char(c1, c2)
end 

return preambula_status 