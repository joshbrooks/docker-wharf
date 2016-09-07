docker run --name mohingadb \
	-e POSTGRES_USER=mohinga \
	-e POSTGRES_PASSWORD=mohinga \
	-v `pwd`/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d \
	-P -d \
	localhost:5000/postgis:xenial 
