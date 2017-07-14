#!/bin/bash
source env.env

docker run \
        -d \
	-p 30000:3031 \
	--link ligainan_db:postgres \
	--env-file ./env.env \
	--name ${CONTAINER} \
	--restart=always \
	${IMAGE} 
