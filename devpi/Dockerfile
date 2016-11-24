FROM python:3.5-slim
MAINTAINER Joshua Brooks <joshua@catalpa.io>

RUN pip install -U devpi-server devpi-web
EXPOSE 3141
CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141"]
