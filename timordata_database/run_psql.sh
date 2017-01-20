#!/bin/bash
source ./timordata_db.env
CONTAINER_PORT=`docker inspect  --format='{{index .NetworkSettings.Ports "5432/tcp" 0 "HostPort"}}' timordata_db`
psql -h localhost --username ${USER} ${DATABASE} -p ${CONTAINER_PORT}
