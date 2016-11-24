#!/bin/bash
portmap='5433:5432'
container='timor-postgis-timordata'
name='timor-postgis-timordata'
options='--rm -it'
docker run --name ${name} -p ${portmap} ${options} ${container}
