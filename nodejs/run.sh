docker run \
	-v `pwd`/bower_cache:/home/bower/.cache/bower \
	-v `pwd`/bower_components:/home/bower/bower_components \
	-it --rm timor-nodejs bash -c "./bower list"
