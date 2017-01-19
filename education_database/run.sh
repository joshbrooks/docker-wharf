#!/bin/bash
source education_db.env

docker build -t ${DATABASE} .

docker run \
	--env-file ./education_db.env \
	--rm -it -P \
	--name ${CONTAINER} \
	-v /home/josh/docker-wharf/opgib/${DATABASE}:/${RESTORE_FROM_DIRECTORY} \
	${IMAGE}
