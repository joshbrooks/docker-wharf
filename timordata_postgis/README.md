# docker-postgis

This Dockerfile installs PostgresQL 9.5 and PostGIS. Heavily based on the official
PostGIS image with a starter database of GIS information in postgres dump format.

## How To Use

docker build -t my_gis
docker run --name gis my_gis

It's that simple ;)
