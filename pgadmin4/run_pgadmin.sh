#!/bin/bash
source /env.env

if [ ! -f "${SQLITE_PATH}" ]; then
    /usr/bin/python3.5 /usr/local/lib/python3.5/dist-packages/pgadmin4/setup.py
fi
/usr/bin/python3.5 /usr/local/lib/python3.5/dist-packages/pgadmin4/pgAdmin4.py
