FROM php:7.1-apache

RUN docker-php-ext-install pdo_mysql

RUN usermod -u 1000 www-data
COPY sites/* /etc/apache2/sites-enabled/
COPY ./laravel.ini /usr/local/etc/php/conf.d/

EXPOSE 80 443
