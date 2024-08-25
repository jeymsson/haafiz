#!/bin/bash

# set -e

/usr/local/bin/docker-php-entrypoint php-fpm --nodaemonize --force-stderr &

sleep 5

composer install
php artisan migrate
php artisan db:seed
php artisan schedule:work &

# tail -f /dev/null
# tail -f /dev/stderr
