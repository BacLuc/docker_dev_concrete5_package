FROM php:8.1-apache as php
RUN rm /etc/apt/preferences.d/no-debian-php
RUN apt-get update
RUN apt-get install -y libjpeg-dev \
                       libpng-dev \
                       libfreetype6-dev \
                       libicu-dev \
                       libzip-dev
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd intl pdo_mysql zip
RUN pecl install xdebug-3.1.2
RUN a2enmod rewrite


FROM php
MAINTAINER Lucius Bachmann <lucius.bachmann@gmx.ch>
LABEL Description="Docker Container to develop concrete5 projects" \
	License="Apache License 2.0" \
	Usage="docker compose up" \
    Version="1.0"

RUN apt-get install -y dos2unix \
                       mariadb-client \
                       iproute2 \
                       gettext-base \
                       unzip \
                       wget \
                       git \
                       zip

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini


RUN mkdir -p /root/.ssh \
   && touch /root/.ssh/known_hosts \
   && ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
#RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.6.6
RUN rm composer-setup.php

ARG CONCRETE5_VERSION
ARG CONCRETE5_LINK
COPY docker/download-concrete5 /download-concrete5
RUN chmod +x /download-concrete5

RUN adduser --disabled-password --gecos "" concrete5 \
    && usermod -a -G 33 concrete5

RUN /download-concrete5 $CONCRETE5_VERSION


VOLUME /var/www/html
VOLUME /var/log/apache2

EXPOSE 80
EXPOSE 3306

COPY docker/entrypoint.sh /usr/local/bin
RUN dos2unix /usr/local/bin/entrypoint.sh

RUN chown concrete5:www-data /var/www/html && chmod 775 /var/www/html && chmod ug+s /var/www/html

COPY docker/composerpkg /usr/local/bin/composerpkg
RUN chmod +x /usr/local/bin/composerpkg

ENV APACHE_RUN_USER=concrete5

ENTRYPOINT exec bash -v /usr/local/bin/entrypoint.sh