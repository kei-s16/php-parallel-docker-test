FROM php:8.2.3-zts-alpine3.17

RUN apk add build-base autoconf && \
    pecl install parallel && \
    docker-php-ext-enable parallel

COPY ./main.php /
WORKDIR /

CMD ["php", "./main.php"]
