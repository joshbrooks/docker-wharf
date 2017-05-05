DOCKERFILE='./apt-cacher-ng.Dockerfile'
CONTAINERNAME='apt_cacher_ng'
docker build -f ${DOCKERFILE} -t ${CONTAINERNAME} .
