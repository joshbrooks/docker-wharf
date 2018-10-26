FROM timor-python:xenial
LABEL maintainer="Joshua Brooks <joshua@catalpa.io>"
ENV projectname=timordata

WORKDIR /usr/src/app/${projectname}
COPY timordata .
EXPOSE 49152
EXPOSE 3031

COPY uwsgi.ini /usr/src/app/
RUN sed -i "s/%n/${projectname}/" /usr/src/app/uwsgi.ini
CMD ["uwsgi", "--ini", "/usr/src/app/uwsgi.ini"]
