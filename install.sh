#!/bin/bash  
set -ev
if [ "${TRAVIS_BRANCH}" = "master" ]; then
    composer create-project jadjoubran/laravel5-angular-material-starter --prefer-dist
    cd laravel5-angular-material-starter
else
    cp .env.example .env
    php artisan key:generate
    php artisan jwt:generate    
fi
npm install -g gulp bower && npm install && bower install