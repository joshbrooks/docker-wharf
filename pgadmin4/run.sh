export RUNDIR=/run
mkdir -p ${RUNDIR}/log
mkdir -p ${RUNDIR}/lib

docker run -p 5050:5050 --rm -it \
    -v `pwd`/${RUNDIR}/log:/var/log/pgadmin4/ \
    -v `pwd`/${RUNDIR}:/var/lib/pgadmin4/ \
    pgadmin:pgadmin4-1.5
