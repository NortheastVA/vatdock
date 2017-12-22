FROM php:7.1-fpm

RUN docker-php-ext-install pdo_mysql

COPY ./laravel.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www

RUN mkdir /sessions
