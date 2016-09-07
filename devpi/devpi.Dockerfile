#--------- Generic stuff all our Dockerfiles should start with so we get caching ------------
FROM python:3.5-slim
MAINTAINER Joshua Brooks <joshua@catalpa.io>
RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl
ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

#-------------Application Specific Stuff ----------------------------------------------------

RUN pip install -U devpi-server devpi-web
EXPOSE 3141
CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141"]
