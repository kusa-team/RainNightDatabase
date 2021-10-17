-- {"id":20,"Name": "卸载飞压","Description": "卸载这个流氓软件！"}
local software = utils:FindSoftware('飞压')
if software  ~= nil then
return
end
utils:StartCommand(utils:RightPath('C:/Program Files (x86)/FeiRar/*/uninst.exe'))