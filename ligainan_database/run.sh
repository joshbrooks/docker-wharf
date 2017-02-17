#!/bin/bash
source env.env

docker run \
	--env-file ./env.env \
	--rm -it -P \
	--name ${CONTAINER} \
	-v /home/josh/docker-wharf/opgib/${DATABASE}:/${RESTORE_FROM_DIRECTORY} \
	${IMAGE}
