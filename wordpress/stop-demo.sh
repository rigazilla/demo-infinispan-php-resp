docker compose exec infinispan chmod a+w -R infinispan/data infinispan/log
docker compose down -v
echo Deleting Infinispan data and log files...
rm -rf infinispan/data infinispan/log
