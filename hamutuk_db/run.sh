#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	--rm -it -p ${PORT_5432}:5432 \
	--name ${CONTAINER} \
	-v ${RESTORE_FROM}:/source \
	${IMAGE}
