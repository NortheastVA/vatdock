FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo_mysql && \
    apk add --no-cache mysql-client

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql

COPY ./laravel.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www

RUN mkdir /sessions
COPY start.sh /bin

CMD ["/bin/sh", "/bin/start.sh"]
