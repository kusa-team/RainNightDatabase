# RainNight 雨夜主数据库
目录结构：
```
checkers - 检查脚本，用于存放检查某个软件在计算机上是否存在的脚本
processors - 处理脚本，用于存放卸载或者执行其他处理方案的脚本
softwares - 软件数据库，用于存放软件的信息库
```

# 贡献
欢迎大家为这个仓库提交Pull Request！    
每周我会将大家的Pull Request添加到主数据库中。

## 检查脚本示例
``` lua
-- {"id": 软件id}
return true or false
```
第一行一定要是一个注释带着一个Json，其中软件id为`softwares`目录下软件的数字id。     
其次可以做一些操作，但最后必须返回一个`boolean`来确认软件是否存在。     
如果返回了`true`，那么将会在程序界面上看到`softwares`中对应软件的信息。

## 处理脚本示例
``` lua
-- {"id": 软件id, "Name": "名称", "Description": "描述"}

-- do something here ...
```
第一行一定要是一个注释带着一个Json，其中软件id为`softwares`目录下软件的数字id，名称则为点击“处理”后弹出页面的条目名称，描述即为这个脚本做了什么操作。     

## Api
检查脚本与处理脚本均可使用这些公用Api。     
参数中带`[]`的为选填参数

### `utils:StartCommand(path, [args], [noShell], [wait])`
运行某个程序。    
`path(string)`为要执行程序的路径     
`args(string)`为要执行程序的命令行参数，如不需要请传入空字符串     
`noShell(bool)`为是否以外壳程序执行，如果程序需要UAC请传入`true`     
`wait(bool)`为是否等待程序运行结束，会堵塞代码的执行

### `utils:Message(message)` / `utils:Error(message)` / `utils:Info(message)` / `utils:Warning(message)`
弹出不同种类的提示框。     
`message(object)`提示框的内容


### `utils:RightPath(path)`
传入一个“X:/path/to/\*/*/file.txt”的路径，返回第一个能匹配这个路径且存在的路径。    
例如，有一个文件`D:/hello/something/a.txt`，但是`something`目录的名称不固定，传入`D:/hello/*/a.txt`即可返回一个正确的路径。如果找不到则返回`nil`     
`*`表示通配符，如果需要通配盘符则使用`:*`（没错，冒号在前）     
`path(string)`传入的路径表达式


### `utils:DesktopExists(keywords...)`
桌面是否包含某个全部匹配关键字的文件，返回一个`bool`      
`keywords(param string[])`关键词，注意哪怕缺了一个关键词都会返回`false`

### `utils:FindSoftware(keywords...)`
查找系统内安装有的某个软件，存在则返回`struct InstalledSoftware`，否则返回`nil`
`keywords(param string[])`关键词，注意哪怕缺了一个关键词都会返回`nil`

### `struct InstalledSoftware`
```
struct InstalledSoftware {
    string Name; // 软件名称
    string Uninstaller; // 软件卸载程序的路径，可能为nil
}
```

## 本地调试
### 1.架设服务器
目前的RainNight还没有做本地调试...     
其中使用的校验算法为`Ed25519`，可以自己想办法生成一对密钥，将公钥填写至软件的设置内，在自己的电脑架设一个http服务器，并将其地址填入软件的设置内。     
将本仓库的`loaded_empty.db`复制到服务器根目录，使用sqlite3的管理工具打开编辑，两个表内的结构跟这个仓库的代码结构差不多。     
即可架设一个自己的上游服务器。

### 2.调试窗口
scripts表中的type为0时，代表这个脚本为检测脚本，为1时代表这个脚本为处理脚本（处理脚本的data字段可根据官方数据库中的json结构填写）     
在软件的关于页面中，右键软件的版本号（注意是软件名称右下角的版本号而不是软件那写得贼大的名字）即可打开调试窗口。     
第一页可用于签名脚本（其实那两个密钥只用填写私钥就够了，公钥是我写在那里摆样子的）。     
第二页为日志，可以查看程序的执行流程以及中间除了什么错误，便于调试！
