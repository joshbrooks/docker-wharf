read -p "Apt-cache directory(/home/josh/apt-cacher-ng): " CACHE_DIR
CACHE_DIR=${CACHE_DIR:-/home/josh/apt-cacher-ng}
# docker run --restart=always -d -p 3142:3142 -v ${CACHE_DIR}:/var/cache/apt-cacher-ng --name aptcache apt_cacher_ng
