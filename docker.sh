#构建镜像
docker build -t="wulinyun/docker-war-demo" .
#查看本地镜像
docker images
#标记为私有仓库镜像
docker tag wulinyun/docker-war-demo harbor.landaudev.com/demo/docker-war-demo:latest
#推送到私有镜像仓库当中
docker push harbor.landaudev.com/demo/docker-war-demo:latest
#push到PCF
cf push docker-war-demo --docker-image harbor.landaudev.com/demo/docker-war-demo:latest
#删除tag标记
#docker rmi -f harbor.landaudev.com/demo/docker-war-demo:latest
#后台运行本地docker镜像
#sudo docker run   -d -p 8080:8080 wulinyun/docker-war-demo