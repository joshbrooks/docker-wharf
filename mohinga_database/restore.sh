docker run --name test_mohinga cattleregistry:5000/postgis
docker exec test_mohinga mkdir /tmp/backup
docker cp backups/database/database/* test_mohinga:/tmp/backup
docker exec test_mohinga pg_restore /tmp/backup/database

