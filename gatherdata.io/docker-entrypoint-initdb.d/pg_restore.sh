#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER django PASSWORD 'django';
    CREATE DATABASE django;
    GRANT ALL PRIVILEGES ON DATABASE django TO django;
EOSQL

pg_restore -U postgres -d django -Fd /docker-entrypoint-initdb.d/latest
