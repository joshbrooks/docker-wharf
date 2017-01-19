#!/bin/bash
set -e
USER=ligainan
DATABASE=ligainan_db
RESTORE_FROM_DIECTORY=/docker-entrypoint-initdb.d/${DATABASE}


psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    --CREATE EXTENSION IF NOT EXISTS plpgsql;
    CREATE USER ${USER} PASSWORD '${USER}';
    CREATE DATABASE ${DATABASE};
    --GRANT ALL PRIVILEGES ON DATABASE ${DATABASE} TO ${USER};
EOSQL

pg_restore -U postgres -d ${DATABASE} -Fd /docker-entrypoint-initdb.d/${DATABASE}
