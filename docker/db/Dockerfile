FROM mariadb
RUN apt-get update && apt-get install -y mysql-client
COPY init/init.sql /docker-entrypoint-initdb.d/

