-- {"id": 7, "Name": "卸载驱动精灵", "Description": "将会卸载掉这个软件"}
local software = utils:FindSoftware('DriverGenius')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand('c:\\program files (x86)\\mydrivers\\drivergenius\\uninstall.exe')