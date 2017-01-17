#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE EXTENSION "uuid-ossp";
	CREATE USER "FormhubDjangoDB";
	CREATE DATABASE "formhubDjangoApp" OWNER "FormhubDjangoDB";
EOSQL
