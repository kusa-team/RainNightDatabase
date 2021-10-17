-- {"id":19,"Name":"卸载小黑记事本","Description":"跟弹窗广告说再见吧"}

local software = utils:FindSoftware('小黑记事本')
if software ~= nil then
utils:StartCommand(software.Uninstaller)
return
end

utils:StartCommand(utils:RightPath('C:/Users/*/AppData/Roaming/Heinote/uninst.exe'))