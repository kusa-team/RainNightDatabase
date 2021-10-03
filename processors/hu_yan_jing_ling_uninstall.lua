-- {"id": 3, "Name": "卸载护眼精灵", "Description": "将会卸载掉这个软件"}
local path = utils:RightPath('C:\\Users\\*\\AppData\\Roaming\\QYDesktopRest\\Uninstall.exe')
if path ~= nil then
    utils:StartCommand(path)
    return
end

utils:Error('卸载失败：未找到卸载程序')