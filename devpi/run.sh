TAG=devpi
NAME=devpi
docker run -p 3141:3141 --restart=always -v /var/cache/devpi:/root/.devpi/server --name ${NAME} ${TAG}
