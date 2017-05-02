#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	--rm -it -p 5433:5432 \
	--name ${CONTAINER} \
	-v ${RESTORE_FROM}:/source \
	${IMAGE}
