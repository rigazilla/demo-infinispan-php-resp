#!/bin/bash
docker-compose exec php bash -c 'chmod -Rf a+w .'
docker-compose exec infinispan bash -c 'chmod -Rf a+w infinispan/data infinispan/log'
make down
make prune
set -x
rm -rf ispn/ infinispan/log/ infinispan/data/