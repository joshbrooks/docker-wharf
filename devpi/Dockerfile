FROM ubuntu:xenial-cache
MAINTAINER Joshua Brooks <joshua@catalpa.io>
RUN apt-get update && apt-get install -y python-pip && apt-get clean
RUN pip install -U devpi-server devpi-web
RUN devpi-server --init
EXPOSE 3141
CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141"]
