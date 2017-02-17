#!/bin/bash
source env.env

docker run \
    --rm -it \
	-p 30001:3031 \
	--link ligainan_db:postgres \
	--env-file ./env.env \
	--name ${CONTAINER}_dev \
	--volume=`pwd`/liga-inan/liga_inan_project:/usr/app/src/liga_inan_project \
	${IMAGE} bash -c "cd liga_inan_project && python manage.py runserver 0.0.0.0:3031"
