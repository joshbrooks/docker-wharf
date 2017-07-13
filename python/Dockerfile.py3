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
COPY apt.py3.requirements .
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
		python3 \
		python3-pip \
		python3-dev \
		python3-setuptools \
        postgresql-client \
		build-essential \
		$(cat apt.py3.requirements) \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

ONBUILD COPY requirements.txt ./
RUN pip3 install -U --trusted-host 172.17.0.1 pip3 wheel setuptools distribute
ONBUILD RUN pip3 install -U --trusted-host 172.17.0.1 -r requirements.txt

CMD ["python"]
