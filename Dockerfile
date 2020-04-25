FROM osrm/osrm-backend:v5.22.0

MAINTAINER Lukas Cerny <lukas.cerny@futuretek.cz>

ENV PBF_DATA http://download.geofabrik.de/europe/malta-latest.osm.pbf

RUN apt-get update \
    && apt-get -y install curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*

COPY start.sh /bin/start.sh
COPY update.sh /bin/update.sh

RUN chmod a+x /bin/start.sh
RUN chmod a+x /bin/update.sh

CMD /bin/start.sh