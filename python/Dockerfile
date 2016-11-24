#--------- Generic stuff all our Dockerfiles should start with so we get caching ------------
FROM ubuntu:xenial
MAINTAINER Joshua Brooks <joshua@catalpa.io>
RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl
ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng
#-------------Application Specific Stuff ----------------------------------------------------

# Use a devpi server running on Docker Host
ENV PIP_INDEX_URL=http://172.17.0.1:3141/root/pypi/+simple/

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
		python \
		python-pip \
		python-dev \
		python-setuptools \
        postgresql-client \
		build-essential \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /usr/src/app



ONBUILD COPY requirements.txt ./
RUN pip install -U --trusted-host 172.17.0.1 pip wheel
ONBUILD RUN pip install -U --trusted-host 172.17.0.1 -r requirements.txt
ONBUILD COPY . .

CMD ["python"]
