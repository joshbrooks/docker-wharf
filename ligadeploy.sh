WORKDIR=`pwd`
cd ${WORKDIR}/ligainan_database/opgib
echo "Running opgib_update"
./opgib_update.sh
cd ${WORKDIR}/ligainan_database
echo "Building the Liga Inan database"
./build.sh && ./run.sh
cd ${WORKDIR}
cd ligainan
echo "Building the Liga Inan django app"
./build.sh && ./run.sh
echo "Running some management commands for liga"
docker exec -it ligainan bash -c "cd liga_inan_project && python ./manage.py cache_stats"
