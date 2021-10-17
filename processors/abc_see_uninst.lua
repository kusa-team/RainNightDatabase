-- {"id":21,"Name": "卸载ABC看图","Description": "与烦人的黄色广告说再见"}
local software = utils:FindSoftware('ABC', '看图')
if software  ~= nil then
utils:StartCommand(software.Uninstaller)
return
end
utils:StartCommand(utils:RightPath('C:/Users/*/AppData/Roaming/PhotoViewer/uninst.exe'))