#!/bin/bash
source timordata_db.env

if [ -d ${GHREPO} ]; then
  cd ${GHREPO}
  echo "Updating ${GHREPO}"
  git pull
  cd ..
fi
if [ ! -d ${GHREPO} ]; then
  echo "${GHREPO} does not exist, cloning from https://github.com/${GHUSER}/${GHREPO}"
  git clone https://github.com/${GHUSER}/${GHREPO}
fi


docker build -t ${DATABASE} .

docker run \
	--env-file ./timordata_db.env \
	--rm -it -P \
	--name ${CONTAINER} \
	-v `pwd`/${GHREPO}:/${RESTORE_FROM_DIRECTORY} \
	${IMAGE}
