-- {"id":20,"Name":null,"Description":null}

return (utils:RightPath('C:/Program Files (x86)/FeiRar/*/FeiRar.exe') ~= nil) or (utils:FindSoftware('飞压') ~= nil) or utils:DesktopExists('飞压')