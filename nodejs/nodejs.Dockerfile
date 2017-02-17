FROM ubuntu:xenialaptcache
COPY nodesource.list /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install -y curl&& apt-get clean
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN apt-get update && apt-get install -y nodejs git && apt-get clean
RUN useradd -ms /bin/bash bower
USER bower
WORKDIR /home/bower
RUN npm install bower
RUN ln -s ./node_modules/bower/bin/bower bower
