#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	--rm -it -p ${PORT_5432}:5432 \
        -v ${RESTORE_FROM}:/${RESTORE_FROM_DIRECTORY} \
	--name ${CONTAINER} \
	${IMAGE}
