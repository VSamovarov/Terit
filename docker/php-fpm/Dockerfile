FROM php:7.4-fpm-alpine

RUN apk update && \
    apk add --no-cache libxml2-dev bash coreutils

RUN docker-php-ext-install soap

RUN apk add --no-cache autoconf g++ make

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

#RUN apk add --no-cache postgresql-dev bash coreutils \
#    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
#    && docker-php-ext-install pdo_pgsql

RUN apk add --no-cache unzip

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

COPY ./php.ini /usr/local/etc/php/php.ini

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENV COMPOSER_ALLOW_SUPERUSER 1

# install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

WORKDIR /var/www
