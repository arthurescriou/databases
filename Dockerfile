FROM library/postgres:9.6-alpine

COPY init-databases.sh /docker-entrypoint-initdb.d/
COPY create-databases.sql /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init-databases.sh

EXPOSE 5432
