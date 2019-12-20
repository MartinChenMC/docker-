FROM registry.cn-shenzhen.aliyuncs.com/test_images/php_nginx_service

RUN apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    &&curl -fsSL 'https://github.com/tideways/php-xhprof-extension/releases/download/v5.0.2/tideways-xhprof-5.0.2-x86_64.tar.gz' -o tideways-xhprof.tar.gz \
    && mkdir -p /tmp/tideways-xhprof \
    && tar -xf tideways-xhprof.tar.gz -C /tmp/tideways-xhprof --strip-components=1 \
    && rm tideways-xhprof.tar.gz \
    && docker-php-ext-configure /tmp/tideways-xhprof --enable-tideways-xhprof \
    && docker-php-ext-install /tmp/tideways-xhprof \
    && rm -r /tmp/tideways-xhprof \
    && apk del  .phpize-deps



