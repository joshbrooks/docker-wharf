createdb -U postgres education_db
createuser -U postgres -s education
pg_restore -U postgres -d education_db -Fd /docker-entrypoint-initdb.d/education
