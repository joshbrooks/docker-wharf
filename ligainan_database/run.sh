IMAGE=ligainan_db
CONTAINER=ligainan_db
USER=ligainan
DATABASE=ligainan_db
RESTORE_FROM_DIRECTORY=/docker-entrypoint-initdb.d/${DATABASE}

docker run -d -P --name ${CONTAINER} -v `pwd`/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -v `pwd`/opgib/ligainan_db:/${RESTORE_FROM_DIRECTORY} ${IMAGE}
