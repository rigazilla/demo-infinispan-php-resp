#!/bin/bash
docker-compose exec php bash -c 'chmod -Rf a+w .'
docker-compose exec infinispan bash -c 'chmod -Rf a+w infinispan/data infinispan/log'
make down
make prune
echo Deleting Drupal and Infinispan generated files...
rm -rf ispn/ infinispan/log/ infinispan/data/