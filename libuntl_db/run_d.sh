#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	-d --restart="always" -p ${PORT_5432}:5432 \
	--name ${CONTAINER}-${RELEASE} \
	${IMAGE}
