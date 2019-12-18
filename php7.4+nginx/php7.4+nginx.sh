#!/bin/bash

docker stop php7.4-ext-redis-mongo
docker rm php7.4-ext-redis-mongo

docker run --name php7.4-ext-redis-mongo -v `pwd`/data:/www -d php:ext-redis-mongo

docker stop php-nginx
docker rm php-nginx

docker run -itd --name php-nginx -p 8080:80 -d \
    -v `pwd`/data:/usr/share/nginx/html:ro \
    -v `pwd`/nginx-conf/nginx.conf:/etc/nginx/conf.d/default.conf:ro \
    --link php7.4-ext-redis-mongo \
    nginx