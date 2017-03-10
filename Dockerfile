FROM alpine:latest

MAINTAINER geekineers <developers@8layertech.com>

RUN apk add --no-cache --update mysql mysql-client

#RUN chown -R mysql:mysql /var/lib/mysql

#RUN /usr/bin/mysql_install_db --defaults-file=/etc/mysql/my.cnf

COPY mysql_startup /root/docker/scripts/
COPY fix_access.sql /root/docker/scripts/

RUN chmod 755 /root/docker/scripts/mysql_startup

EXPOSE 3306

ENTRYPOINT ["/root/docker/scripts/mysql_startup"]
