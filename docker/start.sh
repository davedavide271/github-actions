#!/bin/bash

# Run migrations
php artisan migrate --force --no-interaction

# Clear and cache config
php artisan config:clear --no-interaction
php artisan config:cache --no-interaction
php artisan route:cache --no-interaction
php artisan view:cache --no-interaction

# Start nginx and php-fpm
nginx -g "daemon off;" &
php-fpm