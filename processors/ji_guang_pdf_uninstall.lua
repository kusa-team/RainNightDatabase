-- {"id": 5, "Name": "卸载极光PDF", "Description": "将会卸载掉这个软件"}
local software = utils:FindSoftware('JiGuang', 'PDF')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand('C:\\Program Files (x86)\\fastpdf\\kuninstall.exe')