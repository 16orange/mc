#打包镜像为mc.c
docker build -t mc.c .

#创建容器
docker run -itd -w /home/java --name mc --network host -P --restart=always mc.c

#备份导入容器，路径记得替换成你实际路径
docker cp $(ls -td /mnt/sdc1/BKXZ/GAME/MC/MCserver/backup/*/ | head -n 1)java $(docker ps -aqf "name=mc"):/home

#重启容器
#docker restart $(docker ps -aqf "name=mc")

#容器日志
#docker logs $(docker ps -aqf "name=mc")