#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	--rm -it -p ${PORT_5432}:5432 \
	--name ${CONTAINER} \
	${IMAGE} # -v ${RESTORE_FROM}:/source \

# TODO: psql -U postgres -d osm_timor -c "CREATE EXTENSION postgis"
