FROM php:8.0-apache

RUN apt update \
    && apt-get install -y libicu-dev \
    && docker-php-ext-install intl

COPY --from=composer /usr/bin/composer /usr/bin/composer