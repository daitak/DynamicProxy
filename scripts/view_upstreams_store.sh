#!/bin/sh

UPSTREAMS_HOST=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" upstreams)
docker run -t -i --rm redis redis-cli -h ${UPSTREAMS_HOST:?}
