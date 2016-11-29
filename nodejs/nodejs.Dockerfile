FROM ubuntu:xenialaptcache
COPY nodesource.list /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install -y curl&& apt-get clean
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN apt-get update && apt-get install -y nodejs && apt-get clean
