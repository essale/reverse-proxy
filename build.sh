#!/bin/bash

docker build -t reverse-proxy .
docker run \
  --name reverse-proxy \
  -d \
  --restart always  \
  -e URL=<url here> \
  -v <path on server where keystore located>:/keystore \
  -e KEY_STORE_PATH=<this is the keystore path> \
  -e KEY_STORE_PASS=<this is the keystore pass> \
  -e KEY_STORE_TYPE=<default: JKS> \
  -e PORT=8081 \
  -p 8081:8081 \
  itayess/reverse-proxy