-- funcs.lua

-------------------------------------------------------------------------------
-- Функция извлекает из строки один 16-битный отсчет.
function get_sample(s, sample_index) 
  local byte_index = 2*sample_index - 1
  local L, H = string.byte(s, byte_index, byte_index + 1)
  
  local v = 256 * H + L
  if (H >= 128) then
    v = - ((~(v - 1)) & 65535)
  end
  return v
end 

-------------------------------------------------------------------------------
-- Функция добавляет в строку один 16-битный отсчет.
function append_sample(s, sample_value)
  local v = math.floor(sample_value + 0.5)   
 
  if v < 0 then
    v = - v 
    v = ((~v) + 1) & 65535
  end

  local H = v // 256
  local L = v - H * 256
  return  s .. string.char(L, H)
end 

