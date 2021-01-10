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
  -e PORT=8443 \
  -p 8443:8443 \
  itayess/reverse-proxy