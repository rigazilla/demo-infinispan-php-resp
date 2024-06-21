docker compose exec wpcli wp redis disable
docker compose exec wpcli wp config set WP_REDIS_HOST infinispan
docker compose exec wpcli wp config set WP_REDIS_PORT 9736
docker compose exec wpcli wp redis enable
echo '*************************************'
echo you can check Infinispan resp activity with
echo tail -f infinispan/log/resp-access.log
echo '*************************************'