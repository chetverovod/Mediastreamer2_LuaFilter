-- Это скрипт выполняемый в Lua-фильтре как тело скрипта. 
-- Данные без изменений передаются на выход.

-- Инкрементируем статус, просто так.
body_status = body_status + 1

print('\nbody_status=' .. tostring(body_status) .. "\n")
print('data_len=' .. tostring(lf_data_len) .. "\n")
print('data[1]=' .. tostring(string.byte(lf_data,1)) .. "\n")
print('data[2]=' .. tostring(string.byte(lf_data,2)) .. "\n")
print('data[3]=' .. tostring(string.byte(lf_data,3)) .. "\n")
print('data[4]=' .. tostring(string.byte(lf_data,4)) .. "\n")

-- Перекладываем результат работы в выходные переменные.
-- В данном случае входные данные без именений поступаю на выход скрипта.
lf_data_out = lf_data
lf_data_out_len = lf_data_len

return body_status
