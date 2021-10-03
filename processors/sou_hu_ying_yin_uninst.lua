-- {"id": 10, "Name": "卸载搜狐影音", "Description": "跟广告弹窗说再见吧"}
local software = utils:FindSoftware('搜狐', '影音')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand(utils:RightPath('C:\\Users\\*\\AppData\\Roaming\\搜狐影音\\*\\SHUnInstall.exe'))