#!/bin/sh

./harbor/install.sh
docker-compose -f docker-compose.yml -p mini-infra up -d