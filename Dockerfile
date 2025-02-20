FROM biarms/mysql:5.7.30

RUN apt-get update && apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN sed -i '39a default-time-zone = "+08:00"' /etc/mysql/conf.d/my.cnf
