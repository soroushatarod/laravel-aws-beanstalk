#!/bin/bash

if [ ! -f .env ] ; then
    cp .env.example .env
    php artisan key:generate
else
   OUTPUT="$(egrep "^APP_KEY=(.+)$" /var/www/html/.env)"
   if [ -z "$OUTPUT" ]; then
        php  /var/www/html/artisan key:generate
    fi
fi