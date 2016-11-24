USER=django
DATABASE=timordata.info
BACKUPDIR=timordata-postgres

createdb -U postgres ${DATABASE}
createuser -U postgres -s ${USER}
pg_restore -U postgres -d ${DATABASE} -Fd /docker-entrypoint-initdb.d/${BACKUPDIR}
