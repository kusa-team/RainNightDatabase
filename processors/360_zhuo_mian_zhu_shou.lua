-- {"id": 6, "Name": "卸载360桌面助手", "Description": "将会卸载掉这个软件"}
local software = utils:FindSoftware('桌面助手')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand(utils:RightPath('C:\\Users\\*\\AppData\\Roaming\\Desktoplite\\uninstall\\unins000.exe'))