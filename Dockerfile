FROM mysql:8

COPY ./app/init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306