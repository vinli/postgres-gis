FROM postgres:9.3
MAINTAINER Powell Kinney <powell@vin.li>

RUN apt-get update \
    && apt-get -y install postgresql-contrib-9.3 postgresql-9.3-postgis-2.1 postgis \
    && rm -rf /var/lib/apt/lists/*
