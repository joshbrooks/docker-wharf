FROM ansible
MAINTAINER Joshua Brooks <joshua@catalpa.io>
WORKDIR /tmp
COPY hosts /etc/ansible/hosts
COPY templates ./templates
COPY main.yml .

ENV LANG en_US.utf8
ENV PATH /usr/lib/postgresql/9.6/bin:$PATH
ENV PGDATA /var/lib/postgresql/data
VOLUME /var/lib/postgresql/data
COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
COPY docker-entrypoint.sh /

RUN ansible-playbook main.yml

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
