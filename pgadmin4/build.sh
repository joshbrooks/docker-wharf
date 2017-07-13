if [ ! -f "pgadmin4-1.5-py2.py3-none-any.whl" ]; then
    echo "Getting pgadmin4 wheel"
    wget -c https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v1.5/pip/pgadmin4-1.5-py2.py3-none-any.whl
else
    echo "Using already downloaded pgadmin4 wheel"
fi
docker build -t pgadmin:pgadmin4-1.5 .
