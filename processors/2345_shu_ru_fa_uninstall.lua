-- {"id": 9, "Name": "卸载2345输入法", "Description": "跟广告弹窗说再见吧"}
local software = utils:FindSoftware('王牌输入法', '2345')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end

utils:StartCommand(utils:RightPath('C:\\Program Files (x86)\\2345Soft\\2345Pinyin\\*\\Uninstall.exe'))