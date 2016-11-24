#!/bin/bash

USERNAME=mohinga
DIR='backups/database'
CONTAINER='mohingadb'

docker exec -it ${CONTAINER} mkdir /tmp/docker-entrypoint-initdb.d
docker exec -it ${CONTAINER} pg_dump -U ${USERNAME} -Z 0 -F d mohinga -f /tmpdocker-entrypoint-initdb.d
docker cp ${CONTAINER}:/tmp/docker-entrypoint-initdb.d .
docker exec -it ${CONTAINER} rm -rf /tmp/docker-entrypoint-initdb.d

git add .
git commit -am "Update to ${DATE}"
# git push origin master
