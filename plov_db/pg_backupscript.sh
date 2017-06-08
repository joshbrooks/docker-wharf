source env.env
timestamp=`date -I -u`_`date +%s`
docker exec ${CONTAINER} pg_dump -d ${DATABASE} -U ${USER} -Z 0 -F d -f /tmp/${timestamp}
docker cp ${CONTAINER}:/tmp/${timestamp} .
docker exec ${CONTAINER} rm -rf /tmp/${timestamp}



