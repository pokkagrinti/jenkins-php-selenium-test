#!/usr/bin/env sh
set -x
docker network create --subnet=172.18.0.0/16 test-network
docker run -d -p 80:80 --name my-apache-php-app -v $(pwd)/src:/var/www/html --ip 172.18.0.2 php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
