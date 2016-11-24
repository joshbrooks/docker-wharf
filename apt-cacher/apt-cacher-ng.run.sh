CACHE_DIR='/media/josh/livespace/apt-cacher-ng'
docker run --restart=always -d -p 3142:3142 -v ${CACHE_DIR}:/var/cache/apt-cacher-ng --name aptcache apt_cacher_ng
