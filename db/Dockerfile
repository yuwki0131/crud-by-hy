FROM mysql:5.7
EXPOSE 3306:3306
ENV MYSQL_ROOT_PASSWORD passwd
COPY init.sql /docker-entrypoint-initdb.d/
