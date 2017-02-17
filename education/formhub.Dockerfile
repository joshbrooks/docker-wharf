FROM timor-python2
MAINTAINER Joshua Brooks <joshua@catalpa.io>
WORKDIR /usr/src/app/
ENV projectname=liga-inan
COPY ${projectname} /usr/src/app/

EXPOSE 49152
EXPOSE 3031
EXPOSE 3032

COPY uwsgi.template.ini /usr/src/app/
COPY local_settings.py /usr/src/app/liga_inan_project/liga_inan_project
RUN sed "s.{PROJECTNAME}.${projectname}.g" uwsgi.template.ini > uwsgi.ini

ENV PATH="/usr/src/app/${projectname}:$PATH"
CMD ["uwsgi", "--ini", "/usr/src/app/uwsgi.ini"]
