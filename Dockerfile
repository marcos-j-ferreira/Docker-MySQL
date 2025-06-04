FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=12345678@Aa
ENV MYSQL_DATABASE=escola
ENV MYSQL_USER=marcos
ENV MYSQL_PASSWORD=senhaForte

COPY ./app/init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
