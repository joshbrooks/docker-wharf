# Importing Data

Set up a python2 virtualenv
Download a PBF file from http://download.geofabrik.de/

# Requirements

See also https://imposm.org/docs/imposm/latest/install.html#requirements

```
sudo aptitude install \
    python-virtualenv \
    build-essential python-dev protobuf-compiler \
                      libprotobuf-dev libtokyocabinet-dev python-psycopg2 \
                      libgeos-c11 \
    libgdal1-dev libspatialindex-dev
```

Pip packages
```
virtualenv -p python2 import_osm
import_osm/bin/pip install imposm
import_osm/bin/pip install rtree
import_osm/bin/imposm --help

```

Import
```
USER=osm
DATABASE=osm_uz
IMAGE=timor-postgis
CONTAINER=${DATABASE}
PORT_5432=5438
RESTORE_FROM=/home/josh/Desktop/opgib/plov_staging.plov_db/2017-04-27
RESTORE_FROM_DIRECTORY=/source

RESTORE_FROM_PBF=/home/josh/Downloads/uzbekistan-latest.osm.pbf

# import_osm/bin/imposm --read ${RESTORE_FROM_PBF}
import_osm/bin/imposm --write --database ${DATABASE} --host localhost --user ${USER} --port ${PORT_5432}

```
