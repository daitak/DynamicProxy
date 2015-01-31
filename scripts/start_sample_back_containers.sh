#!/bin/sh

. dproxy.fnc

runContainerAsDaemon foo-db mysql "-P -e MYSQL_ROOT_PASSWORD=foop@ssw0rd"
runContainerAsDaemon foo wordpress "-P --link foo-db:mysql"
