#!/bin/bash

docker stop redis
docker rm redis

docker run -itd --name redis -p 6379:6379 \
	-v `pwd`/conf/redis.conf:/usr/local/etc/redis/redis.conf \
	-v `pwd`/data:/data \
	redis:latest redis-server /usr/local/etc/redis/redis.conf --appendonly yes    #最后一个参数表示持久化

