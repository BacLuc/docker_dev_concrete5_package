FROM php:7.1-apache
MAINTAINER Lucius Bachmann <lucius.bachmann@gmx.ch>
LABEL Description="Docker Container to develop concrete5 projects" \
	License="Apache License 2.0" \
	Usage="docker compose up" \
    Version="1.0"

RUN rm /etc/apt/preferences.d/no-debian-php
RUN apt-get update
RUN apt-get install -y dos2unix \
                       mariadb-client \
                       iproute2 \
                       gettext-base \
                       unzip \
                       wget \
                       git \
                       zip \
                       libjpeg-dev \
                       libpng-dev \
                       libfreetype6-dev
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd
RUN pecl install xdebug

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

ARG CONCRETE_SUPPORT_FILES=/usr/local/etc/concrete5/
RUN mkdir -p $CONCRETE_SUPPORT_FILES
COPY docker/*.sql $CONCRETE_SUPPORT_FILES
COPY docker/database.php.template $CONCRETE_SUPPORT_FILES


RUN mkdir -p /root/.ssh \
   && touch /root/.ssh/known_hosts \
   && ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN rm composer-setup.php

ARG CONCRETE5_VERSION
ARG CONCRETE5_LINK
RUN wget $CONCRETE5_LINK -O /usr/local/bin/concrete5.zip \
    && unzip /usr/local/bin/concrete5.zip -d /tmp \
    && if [ -f /tmp/concrete$CONCRETE5_VERSION/composer.json ]; then \
    cd /tmp/concrete$CONCRETE5_VERSION; \
    composer install; \
    fi \
    && rm /usr/local/bin/concrete5.zip \
    && cd /tmp \
    && zip -r /usr/local/bin/concrete5.zip concrete$CONCRETE5_VERSION\
    && rm -r /tmp/concrete$CONCRETE5_VERSION


VOLUME /var/www/html
VOLUME /var/log/apache2

EXPOSE 80
EXPOSE 3306

COPY docker/entrypoint.sh /usr/local/bin
RUN dos2unix /usr/local/bin/entrypoint.sh

ENTRYPOINT exec bash -v /usr/local/bin/entrypoint.sh