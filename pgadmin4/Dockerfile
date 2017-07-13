FROM timor-python3
COPY ./pgadmin4-1.5-py2.py3-none-any.whl /usr/src/app
RUN pip install --trusted-host 172.17.0.1 pgadmin4-1.5-py2.py3-none-any.whl
RUN rm /usr/src/app/pgadmin4-1.5-py2.py3-none-any.whl

EXPOSE 5050

COPY config_local.py /usr/local/lib/python3.5/dist-packages/pgadmin4/
COPY run_pgadmin.sh /
COPY env.env /

CMD ["/run_pgadmin.sh"]
