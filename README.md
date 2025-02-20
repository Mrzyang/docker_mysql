# docker_mysql
- docker构建mysql 5.7.30
- 基于项目 https://github.com/biarms/mysql
- 支持	arm32v6，arm32v7，arm64v8，amd64
- 修改了容器内ubuntu 18和mysql时区为UTC+8
- 配置文件目录:/etc/mysql, 数据文件位置：/var/lib/mysql
- 运行命令
``` shell
docker run \
--name mysql5.7 \
--network host \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_DATABASE=my_db \
-v /opt/zy/docker_mysql_conf_data/data:/var/lib/mysql \
-d mrzyang/mysql:5.7.30
```







