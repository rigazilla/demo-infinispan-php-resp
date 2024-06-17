# Infinispan as Open Source replacement for CMS cache layer

This project contains demos that shows how Infinispan can seamless replace Redis as an open source cache layer.

All the demo can be played in the same way:

1. you need git, bash docker and docker compose.
2. clone this project.
3. cd into one demo folder.
4. run
```bash
   ./start-demo.sh
```
This will start the cms and configure Redis as cache layer.

5. web site is available at: `http://<foldername>.docker.localhost`, credentials for admin pages are `demo:demo`
6. check that Redis is running correctly with:
```bash
docker compose exec redis redis-cli info
```
7. run
```bash
./switch-to-infinispan.sh
```
This will switch from Redis to Infinispan, just redefining the cache layer endpoint.

8. Access the web site to create some requests for Infinispan
9. Check that Infinispan is now running as cache with:
```
bash tail -f infinispan/log/resp-access.log
```