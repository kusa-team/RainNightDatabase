-- {"id": 2, "Name": "卸载2345加速浏览器", "Description": "将会卸载掉这个软件"}
local software = utils:FindSoftware('2345', '加速浏览器')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand('C:/Program Files (x86)/2345Soft/2345Explorer/Uninstall.exe')