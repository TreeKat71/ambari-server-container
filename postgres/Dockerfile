FROM postgres

ENV POSTGRES_DB=ambari
ENV POSTGRES_USER=ambari
ENV POSTGRES_PASSWORD=ambari

COPY user.sql /docker-entrypoint-initdb.d/user.sql
COPY init.sql /docker-entrypoint-initdb.d/init.sql