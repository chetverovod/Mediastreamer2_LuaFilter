-- Эта программа выполняемая в Lua-фильтре. 

body_status = 33
print('data_len=' .. tostring(lf_data_len) .. "\n")
--print('data=' .. tostring(lf_data) .. "\n")
print('data[1]=' .. tostring(string.byte(lf_data,1)) .. "\n")
print('data[2]=' .. tostring(lf_data[2]) .. "\n")
lf_data_out = lf_data
lf_data_out_len = lf_data_len
--lib.msg_init(msg, b8_struct)
--lib.load_message(msg, data) data='-'
--print ('msg.byte_index_max=', msg.byte_index_max)
--data=lib.get_message(msg)
--print ('new data len=', msg.byte_index_max)
return body_status
