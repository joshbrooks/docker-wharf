createdb -U postgres openly
createuser -U postgres -s mohinga
pg_restore -U postgres -d openly -Fd /docker-entrypoint-initdb.d/mohinga
