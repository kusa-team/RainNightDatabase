-- {"id": 2}
return utils:DesktopExists('2345', '加速浏览器') or (utils:FindSoftware('2345', '加速浏览器') ~= nil) or (utils:RightPath('C:/Program Files (x86)/2345Soft/2345Explorer/Uninstall.exe') ~= nil)