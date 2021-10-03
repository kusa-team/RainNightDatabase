-- {"id": 8, "Name": "卸载DS PDF阅读器", "Description": "将会卸载掉这个软件"}
local software = utils:FindSoftware('PDF', '阅读器', '1.0')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand('C:\\Program Files (x86)\\DsPdfReader\\uninst.exe')