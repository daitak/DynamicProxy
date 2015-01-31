#!/bin/sh 

function runContainerAsDaemon() {
  con_name=$1
  img_name=$2
  options=$3

  if [ `docker ps | grep $con_name | wc -l` -ne 0 ]; then
    docker stop $con_name
    docker rm $con_name
  elif [ `docker ps -a | grep $con_name | wc -l` -ne 0 ]; then
    docker rm $con_name
  fi

  docker run -d $options --name $con_name $img_name
  return 0
}
