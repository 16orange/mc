#!/bin/bash

# 获取第一个容器的ID
CONTAINER_ID=$(docker ps | awk 'NR==2 {print $1}')

# 定义备份目录
BACKUP_DIR="/mnt/sdc1/BKXZ/GAME/MC/MCserver/backup"

# 获取当前日期
DATE=$(date +%Y%m%d%H%M)

# 从容器中复制文件
docker cp $CONTAINER_ID:/home $BACKUP_DIR/backup$DATE

# 删除3个最新之外的旧备份
BACKUP_FILES=$(ls -tr $BACKUP_DIR | head -n -3)
for FILE in $BACKUP_FILES
do
  find $BACKUP_DIR -name $FILE -exec rm -rf {} \;
done