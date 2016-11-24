#!/bin/bash
portmap='5433:5432'
container='timor-postgis-timordata'
name='timor-postgis-timordata'
options=''
docker run --restart=always --name ${name} -p ${portmap} ${options} ${container}
