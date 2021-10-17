-- {"id":11,"Name":"卸载快压","Description":"于是就少了一些弹窗广告"}

local software = utils:FindSoftware('快压')
if software ~= nil then
utils:StartCommand(software.Uninstaller)
return
end

utils:StartCommand(utils:RightPath('C:\\Users\\*\\AppData\\Roaming\\*\\*\\uninst.exe'))