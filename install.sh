#!/bin/bash


if [ ! -f .env ] ; then
    cp .env.example .env
    php artisan key:generate
else
   OUTPUT="$(egrep "^APP_KEY=(.+)$" .env)"
   if [ -z "$OUTPUT" ]; then
        php artisan key:generate
    fi
fi