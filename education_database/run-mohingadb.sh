docker run --name mohingadb \
	-e POSTGRES_USER=education \
	-e POSTGRES_PASSWORD=education \
	-v `pwd`/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d \
	-P -d \
	localhost:5000/postgis:xenial 
