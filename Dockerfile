FROM postgres:9.5.2
MAINTAINER Powell Kinney <powell@vin.li>

RUN apt-get update \
    && apt-get -y install postgresql-contrib-9.5=9.5.2-1.pgdg80+1 postgresql-9.5-postgis-2.2 postgis \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'sed -i -E "s/^#?[[:space:]]*(max_connections)([[:space:]]*=[[:space:]]*).*/\\1\\2300/" "$PGDATA/postgresql.conf"' >> /docker-entrypoint-initdb.d/fix-connections.sh
