FROM python:3
LABEL maintainer="Joshua Brooks <joshua@catalpa.io>"
RUN useradd --create-home --shell /bin/sh devpirunnner
USER devpirunnner
ENV PATH=/home/devpirunnner/.local/bin:${PATH}
RUN pip install --no-cache-dir --user --upgrade devpi-server devpi-web
RUN devpi-server --init
EXPOSE 3141
CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141"]
