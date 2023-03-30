-- body2.lua
-- Это скрипт выполняемый в Lua-фильтре как тело скрипта. 

-- Перекладываем результат работы в выходные переменные.
lf_data_out =""
if lf_data_len == nil then 
    print("bad lf_data_len")
end

for i = 1, lf_data_len do
s = get_sample(lf_data, i)
-- s = s * 0.5
lf_data_out = append_sample(lf_data_out, "3")
end

lf_data_out_len = string.len(lf_data_out) / 2
print ("lf_data_out_len=" .. tostring(lf_data_out_len) )
return body_status
