#!/bin/bash

#开ssh
/etc/init.d/ssh start

#清除无用screen
screen -wipe

#创建名为mc的screen窗口, 并在该窗口启动服务器
/usr/bin/screen -dmS mc
/usr/bin/screen -S mc -X stuff "java -Xmx5G -Xms2G -jar paper.jar nogui\n"

#检测服务器是否运行，否则重启
while true; do
  sleep 10
  if ! pgrep -f java; then
    exit 1
  fi
done
