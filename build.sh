#!/bin/bash  
set -ev
if [ "${TRAVIS_BRANCH}" = "master" ]; then   
    cd laravel5-angular-material-starter
fi
php artisan migrate --force && gulp && vendor/bin/phpunit