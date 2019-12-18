FROM php:7.4-fpm-alpine

#添加扩展 redis pecl方式
RUN apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install -o -f redis-5.1.1 mongodb-1.6.1  \
    && docker-php-ext-enable redis mongodb \
    && rm -rf /usr/share/php \
    && rm -rf /tmp/* \
    && apk del  .phpize-deps