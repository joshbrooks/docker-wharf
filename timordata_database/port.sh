CONTAINER_PORT=`docker inspect  --format='{{index .NetworkSettings.Ports "5432/tcp" 0 "HostPort"}}' timordata_db`
echo ${CONTAINER_PORT}
