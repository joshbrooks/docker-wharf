FROM timor-python2
MAINTAINER Joshua Brooks <joshua@catalpa.io>
WORKDIR /usr/src/app/
COPY formhub formhub

EXPOSE 49152
EXPOSE 3031
EXPOSE 3032

COPY uwsgi.template.ini /usr/src/app/
ENV projectname=formhub
RUN sed "s.{PROJECTNAME}.${projectname}.g" uwsgi.template.ini > uwsgi.ini

COPY settings.py ${projectname}/${projectname}/settings_except_mongo.py
COPY settings_local.py ${projectname}/${projectname}/settings_local.py
ENV PATH="/usr/src/app/${projectname}:$PATH"
CMD ["uwsgi", "--ini", "/usr/src/app/uwsgi.ini"]
