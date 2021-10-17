-- {"id":19,"Name":null,"Description":null}

return (utils:RightPath('C:/Users/*/AppData/Roaming/Heinote/hnote.exe') ~= nil) or (utils:FindSoftware('小黑记事本') ~= nil) or utils:DesktopExists('小黑记事本')