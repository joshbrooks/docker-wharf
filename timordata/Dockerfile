FROM timor-python2
LABEL maintainer="Joshua Brooks <joshua@catalpa.io>"
ENV projectname=timordata

RUN django-admin.py startproject ${projectname}
WORKDIR /usr/src/app/${projectname}
EXPOSE 49152
EXPOSE 3031

COPY uwsgi.ini /usr/src/app/
RUN sed -i "s/{PROJECTNAME}/${projectname}/" /usr/src/app/uwsgi.ini
CMD ["uwsgi", "--ini", "/usr/src/app/uwsgi.ini"]
