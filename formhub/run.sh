docker run \
	--link formhub_postgres:formhub_postgres \
	--link formhub_mongo:formhub_mongo \
	--env-file ./env.list \
	--name formhub \
	-p 3031:3031 \
	-p 3032:3032 \
	-it --rm formhub
