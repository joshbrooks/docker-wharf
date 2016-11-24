#--------- Generic stuff all our Dockerfiles should start with so we get caching ------------
FROM ubuntu:xenial
MAINTAINER Joshua Brooks <joshua@catalpa.io>
RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl
ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

#-------------Application Specific Stuff ----------------------------------------------------
