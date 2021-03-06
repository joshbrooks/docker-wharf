#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS plpgsql;
    CREATE USER ${USER} PASSWORD '${USER}';
    CREATE DATABASE ${DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${DATABASE} TO ${USER};
EOSQL

if [ -f ${RESTORE_FROM_DIRECTORY}/toc.dat ]; then
  echo "Restoring database ${DATABASE} from ${RESTORE_FROM_DIRECTORY}"
  pg_restore -U postgres -d ${DATABASE} -Fd ${RESTORE_FROM_DIRECTORY}
fi
