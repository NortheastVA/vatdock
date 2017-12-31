#!/bin/sh

TODAY=$(date -Isecond)

echo "$TODAY Waiting for MySQL Server to spin up..."
sleep 25
echo "$TODAY Done"

cd /var/www/api && sh prep.sh

/usr/local/bin/docker-php-entrypoint php-fpm
