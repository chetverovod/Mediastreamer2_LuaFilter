-- preambula2.lua 
-- Этот скрипт выполняется в Lua-фильтре как преамбула. 
preambula_status = 0
body_status = 0 -- Эта переменная будет инкрементироваться в теле скрипта.
local greetings = 'Hello world from preambula!\n' -- Приветствие.
print(greetings)

-------------------------------------------------------------------------------
function get_sample(s, sample_index) 
  local byte_index = 2*sample_index - 1
  local L = string.byte(s, byte_index)
  local H = string.byte(s, byte_index + 1)
  print ("byte_index=" .. tostring(byte_index) .. "\n")
  print ("L=" .. tostring(L) .. "\n")
  print ("H=" .. tostring(H) .. "\n")
  local v = 256 * H + L
  if (H >= 128) then
    v = - ((~(v - 1)) & 65535)
end
  return v
end 

-------------------------------------------------------------------------------
function append_sample(s, sample_value)
  local v = math.floor(sample_value + 0.5)   
 
  if v < 0 then
  v = - v 
  v = ((~v) + 1) & 65535
  end

  local H = v // 256
  local L = v - H * 256
  print("sample_value = " .. tostring(sample_value))
  print("\n")
  print("val = " .. tostring(v))
  print("\n")
  print(L)
  print("\n")
  print(H)
  print("\n")
  return  s .. string.char(L, H)
end 

return preambula_status 