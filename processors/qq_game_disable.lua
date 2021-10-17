-- {"id":16,"Name": "关闭QQ游戏开机自启","Description": "加快系统的启动速度"}
import ('System')
import ('System.Diagnostics')
import ('System.Diagnostics.Process')
local psi = ProcessStartInfo()
psi.UseShellExecute = true
psi.Verb = 'runas'
psi.FileName = 'sc.exe'
psi.Arguments = 'config QQGameService start= disabled'
Process.Start(psi)