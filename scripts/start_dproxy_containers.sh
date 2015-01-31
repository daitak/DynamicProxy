#!/bin/sh 

. dproxy.fnc

USM_CNAME=upstreams
USM_INAME=redis

#Run redis container
runContainerAsDaemon ${USM_CNAME} ${USM_INAME} "-P"

#Run dproxy container
runContainerAsDaemon dproxy daitak/dproxy "-p 80:80 --link ${USM_CNAME}:${USM_INAME}"

#Run linked container
runContainerAsDaemon linked daitak/linked "--link ${USM_CNAME}:${USM_INAME} -e DOCKER_HOST=tcp://172.17.42.1:2375"
