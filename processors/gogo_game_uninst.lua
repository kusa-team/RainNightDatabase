-- {"id":13,"Name":"卸载 Gogo游戏","Description": "上当受骗风险 - 1"}

local uninstPath = utils:RightPath('C:\\Program Files (x86)\\GogoGame\\uninst.exe')
if uninstPath ~= nil then
    utils:StartCommand(uninstPath)
end

local software = utils:FindSoftware('Steam', '游戏助手')
if software ~= nil then
    utils:StartCommand(software.Uninstaller)
    return
end