#!/bin/bash

#��ssh
/etc/init.d/ssh start

#�������screen
screen -wipe

#����
/usr/bin/screen -dmS mc
/usr/bin/screen -S mc -X stuff "java -Xmx5G -Xms2G -jar paper.jar nogui\n"

#���������Ƿ����У���������
while true; do
  sleep 10
  if ! pgrep -f java; then
    exit 1
  fi
done

