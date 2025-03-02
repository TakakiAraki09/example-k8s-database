FROM mysql:8.0

ENV TZ=Asia/Tokyo
ENV MYSQL_USER=devuser
ENV MYSQL_PASSWORD=devuser
ENV MYSQL_ROOT_PASSWORD=password
ENV LANG=C.UTF-8

COPY my.cnf /etc/mysql/my.cnf
COPY schema/* /schema/
COPY docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/


EXPOSE 3306

