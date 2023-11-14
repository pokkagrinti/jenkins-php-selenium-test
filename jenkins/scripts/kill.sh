#!/usr/bin/env sh

set -x
docker network rm test-network
docker kill my-apache-php-app
docker rm my-apache-php-app
