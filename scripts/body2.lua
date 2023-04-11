-- body2.lua

-- Этот скрипт выполняемый в Lua-фильтре как тело скрипта. 

-- Перекладываем результат работы в выходные переменные.
lf_data_out =""
if lf_data_len == nil then 
    print("Bad lf_data_len.\n")
end

for i = 1, lf_data_len/2 do
s = get_sample(lf_data, i)
-- s = s * math.sin(t * 6.28/6640)
t = t + 1
lf_data_out = append_sample(lf_data_out, s)
end

lf_data_out_len = string.len(lf_data_out)
return body_status
