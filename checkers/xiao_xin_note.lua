-- {"id":24,"Name":null,"Description":null}

return (utils:RightPath('C:/Users/*/AppData/Roaming/xinnote/xinnote.exe') ~= nil) or (utils:FindSoftware('小新记事本') ~= nil) or utils:DesktopExists('小新记事本')