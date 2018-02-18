#!/bin/bash

function exportBoolean {
    if [ "${!1}" = "**Boolean**" ]; then
            export ${1}=''
    else
            export ${1}='Yes.'
    fi
}

exportBoolean LOG_STDOUT
exportBoolean LOG_STDERR

if [ $LOG_STDERR ]; then
    /bin/ln -sf /dev/stderr /var/log/apache2/error.log
else
	LOG_STDERR='No.'
fi

if [ $ALLOW_OVERRIDE == 'All' ]; then
    /bin/sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf
fi

if [ $LOG_LEVEL != 'warn' ]; then
    /bin/sed -i "s/LogLevel\ warn/LogLevel\ ${LOG_LEVEL}/g" /etc/apache2/apache2.conf
fi

# enable php short tags:
/bin/sed -i "s/short_open_tag\ \=\ Off/short_open_tag\ \=\ On/g" /etc/php/7.0/apache2/php.ini

# stdout server info:
if [ ! $LOG_STDOUT ]; then
cat << EOB

    **********************************************
    *                                            *
    *    Docker image: fauria/lamp               *
    *    https://github.com/fauria/docker-lamp   *
    *                                            *
    **********************************************
    SERVER SETTINGS
    ---------------
    · Redirect Apache access_log to STDOUT [LOG_STDOUT]: No.
    · Redirect Apache error_log to STDERR [LOG_STDERR]: $LOG_STDERR
    · Log Level [LOG_LEVEL]: $LOG_LEVEL
    · Allow override [ALLOW_OVERRIDE]: $ALLOW_OVERRIDE
    · PHP date timezone [DATE_TIMEZONE]: $DATE_TIMEZONE
EOB
else
    /bin/ln -sf /dev/stdout /var/log/apache2/access.log
fi

# Set PHP timezone
/bin/sed -i "s/\;date\.timezone\ \=/date\.timezone\ \=\ ${DATE_TIMEZONE}/" /etc/php/7.0/apache2/php.ini

# Run Postfix
/usr/sbin/postfix start






#part of bacluc
# Run MariaDB
service mysql start

CONCRETE5_DIR=/var/www/html
DATABASE_NAME=concrete5_7

mysql --execute="create database $DATABASE_NAME collate utf8mb4_bin;"

mv $CONCRETE5_DIR/application/config/database.php $CONCRETE5_DIR/application/config/database.backup.php
cp $CONCRETE5_DIR/docker/database.php $CONCRETE5_DIR/application/config/database.php

chmod +x $CONCRETE5_DIR/concrete/bin/concrete5

#because installing concrete5 is too slow, we use a database backup
#where the theme is installed and set
#this is the command how concrete5 was installed
#$CONCRETE5_DIR/concrete/bin/concrete5 c5:install \
#    --db-server=localhost \
#    --db-username=root \
#    --db-password=root \
#    --db-database=$DATABASE_NAME \
#    --site=concrete5_7 \
#    --starting-point=elemental_blank \
#    --admin-email=someemail@domain.ch \
#    --admin-password=password \
#    --default-locale=en_US


mysql $DATABASE_NAME < /var/www/html/docker/concrete5_7_with_theme.sql


$CONCRETE5_DIR/concrete/bin/concrete5 c5:package-install basic_table_package

chmod -R +x $CONCRETE5_DIR/application/files

mysql $DATABASE_NAME < /var/www/html/docker/concrete5_7_with_basictable.sql

mysql --execute "update mysql.user set password=PASSWORD('root'), plugin = NULL;"

service mysql restart
###
####setup xdebug
PHP_VERSION_FOLDER=$(php -r "echo phpversion();" | egrep -o -m 1 "[0-9]\.[0-9]" | head -n 1)
XDEBUG_FILE=/etc/php/$PHP_VERSION_FOLDER/apache2/conf.d/20-xdebug.ini
echo "zend_extension=xdebug.so" > $XDEBUG_FILE
echo "xdebug.remote_enable=on" >> $XDEBUG_FILE
echo "xdebug.remote_autostart=off" >> $XDEBUG_FILE
echo "xdebug.remote_host=$XDEBUG_CONFIG" >> $XDEBUG_FILE




service apache2 restart
tail -f /dev/null


#to clear the cache when needed
#$CONCRETE5_DIR/concrete/bin/concrete5 c5:clear-cache
#chmod -R g+w $CONCRETE5_DIR/application/files
