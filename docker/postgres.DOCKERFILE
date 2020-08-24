FROM postgres:11.5-alpine

COPY ./docker/postgres/create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d
RUN chmod 0755 /docker-entrypoint-initdb.d/create-multiple-postgresql-databases.sh
