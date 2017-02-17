mkdir -p $HOME/.cache/bower
mkdir -p ./bower_components

docker run \
	-v $HOME/.cache/bower:/home/bower/.cache/bower \
	-v `pwd`/bower_components:/home/bower/bower_components \
	-v `pwd`/bower.json:/home/bower/bower.json \
	-it --rm timor-nodejs bash -c "./bower install"
