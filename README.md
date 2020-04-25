# The Open Source Routing Machine

This is the image for direction services API.

## Usage

Choose region file from [Geofabrik](http://download.geofabrik.de/)
in `osm.pbf` format and set URL to environment variable `PBF_DATA`.

Map directory `/data` to volume.

Data can be updated by running script `/bin/update.sh` and restarting image afterwards.

Image exposes port 5000
