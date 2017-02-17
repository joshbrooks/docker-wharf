PGDATA="/var/lib/postgresql/data"
docker run \
	-v $(pwd)/data.postgres.d:${PGDATA} \
	--name formhub_postgres \
	--rm \
	--env-file ../env.list \
	formhub_postgres
