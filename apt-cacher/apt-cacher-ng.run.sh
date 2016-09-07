CACHE_DIR='/media/josh/livespace/apt-cacher-ng'

docker run --restart=always -d -p 3142:3142 -v /media/josh/livespace/cache/apt-cacher-ng:/var/cache/apt-cacher-ng -v /media/josh/livespace/cache/apt:/var/cache/apt --name aptcache apt_cacher_ng
