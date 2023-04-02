-- body3.lua
-- Это скрипт выполняемый в Lua-фильтре как тело скрипта. 

-- Скрипт выполняет модуляцию входного сигнала.
lf_data_out =""
if lf_data_len == nil then 
    print("Bad lf_data_len.\n")
end

for i = 1, lf_data_len/2 do
s = get_sample(lf_data, i)
if (samples_count > 14000)  and (samples_count < 30000) then
s = s * math.sin( samples_count/8000 * 6.28/400)
end
samples_count = samples_count + 1
lf_data_out = append_sample(lf_data_out, s)
end

lf_data_out_len = string.len(lf_data_out)
return body_status
