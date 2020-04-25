#!/bin/sh

if test ! -f /data/data.osrm ; then 
	# Create data
	curl $PBF_DATA > /data/data.osm.pbf && \
	osrm-extract -p /opt/car.lua /data/data.osm.pbf && \
  osrm-partition /data/data.osrm && \
  osrm-customize /data/data.osrm && \
	rm -f /data/data.osm.pbf
fi

osrm-routed --algorithm mld /data/data.osrm
