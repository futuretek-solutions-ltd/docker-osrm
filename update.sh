#!/bin/sh

rm -rf /data/update
mkdir /data/update

curl $PBF_DATA > /data/update/data.osm.pbf && \
osrm-extract -p /opt/car.lua /data/update/data.osm.pbf && \
osrm-partition /data/update/data.osrm && \
osrm-customize /data/update/data.osrm && \
rm -f /data/update/data.osm.pbf

mv -f /data/update/* /data/
rm -rf /data/update
