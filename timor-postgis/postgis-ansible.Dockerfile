FROM ansible
MAINTAINER Joshua Brooks <joshua@catalpa.io>
WORKDIR /tmp
COPY hosts /etc/ansible/hosts
COPY templates ./templates
COPY main.yml .
RUN ls -R .
RUN ansible-playbook main.yml
EXPOSE 5432
CMD ["postgres"]
