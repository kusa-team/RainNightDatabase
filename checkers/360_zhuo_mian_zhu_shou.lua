-- {"id": 6}
return utils:DesktopExists('桌面助手') or (utils:FindSoftware('桌面助手') ~= nil) or (utils:RightPath('C:\\Users\\*\\AppData\\Roaming\\Desktoplite\\360DesktopLite64.exe') ~= nil)