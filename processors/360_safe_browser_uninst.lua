-- {"id":15,"Name": "卸载360安全浏览器","Description": "先想好你到底要不要卸载，以免数据丢失"}

local software = utils:FindSoftware('360安全浏览器')
if software ~= nil then
utils:StartCommand(software.Uninstaller)
return
end

utils:StartCommand(utils:RightPath('C:/Users/*/AppData/Roaming/360se6/Application/*/Installer/setup.exe'), '--uninstall')