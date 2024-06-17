chmod a+w -R infinispan
docker compose up -d
docker compose exec wpcli wp core install --title="ISPN-DEMO" --admin_user=wordp --admin_password=wordp --admin_email=example@example.com --url=localhost
docker compose exec wpcli  wp plugin install redis-cache
docker compose exec wpcli wp config set WP_REDIS_HOST redis
docker compose exec wpcli wp plugin activate redis-cache
docker compose exec wpcli wp redis enable
