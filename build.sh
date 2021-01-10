#!/bin/bash

docker build -t reverse-proxy .
docker run -p 8081:8081 -e URL=<url here> -e PORT=<port here> itayess/reverse-proxy
