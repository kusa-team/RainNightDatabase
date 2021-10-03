-- {"id": 8}
return (utils:FindSoftware('PDF', '阅读器', '1.0') ~= nil) or (utils:RightPath('C:\\Program Files (x86)\\DsPdfReader\\DsPdfReader.exe') ~= nil)