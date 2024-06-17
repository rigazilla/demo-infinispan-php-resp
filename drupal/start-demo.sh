chmod -fR a+w infinispan
make up
docker-compose exec php composer create-project drupal-composer/drupal-project:10.x-dev  . --no-interaction
cp settings.php ispn/web/sites/default/settings.php
docker-compose exec php vendor/bin/drush site-install --site-name=ispn --no-interaction --account-name=demo --account-pass=demo 
docker-compose exec php composer require drupal/redis
docker-compose exec php vendor/bin/drush pm:enable redis
cp settings.php.snip ispn
docker-compose exec --user 1000:82 php chmod -f ug+w web/sites/default/settings.php
docker-compose exec --user 1000:82 php bash -c 'cat settings.php.snip >> web/sites/default/settings.php'

