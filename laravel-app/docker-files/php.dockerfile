FROM php:8.0.21RC1-zts-alpine3.16

WORKDIR /var/www/html 

RUN docker-php-ext-install pdo pdo_mysql 