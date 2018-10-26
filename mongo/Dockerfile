FROM ansible
LABEL maintainer="Joshua Brooks <joshua@catalpa.io>"
WORKDIR /tmp
COPY hosts /etc/ansible/hosts
COPY templates ./templates
COPY main.yml .
ENV LANG en_US.utf8

RUN ansible-playbook main.yml && apt-get clean

EXPOSE 27017
EXPOSE 28017
VOLUME ["/data/db"]
WORKDIR /data
CMD ["mongod"]
