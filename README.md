本示例可以自动部署mc服务器到docker，我这里宿主机的linux发行版为openwrt

实现了启动自动开服，检测到服务器意外关闭自动重启，并且还能自动备份存档，并且删除3个最新之外的旧备份。
。
 
因为默认为只能rsa密钥ssh登陆，需要先打开Dockerfile文件，把公钥粘贴上去，再修改ssh端口

这个路径的 “backup\backup202311180045\java\paper.jar” 文件替换上你想要的服务端。
。
 
打开 “开服、备份命令.txt” 按照里面继续操作。

记得检查每一个文件内的路径是否正确，并且只能有一个容器名称为mc的容器存在
。
 
联系邮件: orange_16@foxmail.com
