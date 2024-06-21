chmod a+w -R infinispan
docker compose up -d
docker compose exec wpcli wp core install --title="ISPN-DEMO" --admin_user=demo --admin_password=demo --admin_email=example@example.com --url=wordpress.docker.localhost
docker compose exec wpcli  wp plugin install redis-cache
docker compose exec wpcli wp config set WP_REDIS_HOST redis
docker compose exec wpcli wp plugin activate redis-cache
docker compose exec wpcli wp redis enable
echo '*************************************'
echo site available at: http://wordpress.docker.localhost/
echo user:demo password:demo
echo To check Redis activity:
echo docker compose exec redis redis-cli info
echo '*************************************'