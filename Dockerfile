FROM postgres:10.6
MAINTAINER Vinli Devs <dev@vin.li>

RUN apt-get update \
    && apt-get -y install postgresql-contrib-9.5=9.5.2-1.pgdg80+1 postgresql-9.5-postgis-2.2 postgis \
    && rm -rf /var/lib/apt/lists/*
