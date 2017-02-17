#!/bin/bash
docker run --name gatherdata.io -P --rm --env-file ./env.env -v `pwd`/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d  postgres
