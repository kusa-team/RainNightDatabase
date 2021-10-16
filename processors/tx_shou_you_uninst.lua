-- {"id":14,"Name":"卸载 腾讯手游助手","Description":"用不到就卸了吧，节省空间"}

local software = utils:FindSoftware('腾讯', '手游助手')
if software ~= nil then
utils:StartCommand(software.Uninstaller)
return
end

utils:StartCommand(utils:RightPath('c:\\program files\\txgameassistant\\appmarket\\*\\TUninstall.exe'))