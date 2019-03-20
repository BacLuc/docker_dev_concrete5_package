FROM php:7.1-apache
MAINTAINER Lucius Bachmann <lucius.bachmann@gmx.ch>
LABEL Description="Docker Container to develop concrete5 projects" \
	License="Apache License 2.0" \
	Usage="docker compose up" \
    Version="1.0"

RUN rm /etc/apt/preferences.d/no-debian-php
RUN apt-get update
RUN apt-get install -y dos2unix mariadb-client iproute2 gettext-base
RUN docker-php-ext-install pdo_mysql
RUN pecl install xdebug

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

COPY docker/entrypoint.sh /usr/local/bin
RUN dos2unix /usr/local/bin/entrypoint.sh

ENV CONCRETE_SUPPORT_FILES=/usr/local/etc/concrete5/
RUN mkdir -p $CONCRETE_SUPPORT_FILES
COPY docker/*.sql $CONCRETE_SUPPORT_FILES
COPY docker/database.php.template $CONCRETE_SUPPORT_FILES

VOLUME /var/www/html
VOLUME /var/log/apache2

EXPOSE 80
EXPOSE 3306

ENTRYPOINT exec bash -v /usr/local/bin/entrypoint.sh