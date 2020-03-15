#!/usr/bin/env sh

URL="http://${NSQD_HOST}:${NSQD_PORT}/pub?topic=${TOPIC}"

pub_msg() {
  curl -s -d "hello world from ${HOSTNAME} ${RANDOM}" $URL
  sleep .5s
}

if [ $FOREVER = true ] ; then
  while true ; do
    pub_msg
  done
else
  count=0
  while [ $count -lt $MSGS ] ; do
    pub_msg
    count=$((count+1))
  done
fi
