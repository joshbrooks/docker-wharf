FROM timor-python2
LABEL maintainer="Joshua Brooks <joshua@catalpa.io>"
WORKDIR /usr/src/app/
ENV GHREPO=liga-inan
COPY ${GHREPO} /usr/src/app/

EXPOSE 49152
EXPOSE 3031
EXPOSE 3032

COPY uwsgi.template.ini /usr/src/app/uwsgi.ini
COPY local_settings.py /usr/src/app/liga_inan_project/liga_inan_project

ENV PATH="/usr/src/app/${projectname}:$PATH"
CMD ["uwsgi", "--ini", "/usr/src/app/uwsgi.ini"]
