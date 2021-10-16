-- {"id":13,"Name":null,"Description":null}

return (utils:RightPath('C:\\Program Files (x86)\\GogoGame\\uninst.exe') ~= nil) or (utils:RightPath('C:\\Program Files\\GogoGame\\uninst.exe') ~= nil) or (utils:FindSoftware('Steam', '游戏助手') ~= nil)