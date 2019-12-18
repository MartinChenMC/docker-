FROM php:7.4-fpm-alpine
#RUN apk update && apk add m4 autoconf \
#    && pecl install redis-5.1.1 \
#    && pecl install mongodb-1.6.1 \
#    && docker-php-ext-enable redis mongodb \
#    && rm /var/cache/apk/*
RUN apk add --no-cache --update libmemcached-libs zlib
RUN set -xe \
    && apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install -o -f redis  \
    && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini \
    && rm -rf /usr/share/php \
    && rm -rf /tmp/* \
    && apk del  .phpize-deps


