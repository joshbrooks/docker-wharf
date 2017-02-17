#!/bin/bash
source ./env.env

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

docker build -t `cat image` ${CONTEXT}

