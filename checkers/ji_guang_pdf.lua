-- {"id": 5}
return utils:DesktopExists('PDF', '极光') or (utils:FindSoftware('JiGuang', 'PDF') ~= nil) or (utils:RightPath('C:\\Program Files (x86)\\fastpdf\\kuninstall.exe') ~= nil)