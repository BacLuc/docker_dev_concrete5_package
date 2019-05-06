#!/bin/bash
# Set PHP timezone
#/bin/sed -i "s/\;date\.timezone\ \=/date\.timezone\ \=\ ${DATE_TIMEZONE}/" /etc/php/7.0/apache2/php.ini

# Run Postfix
/usr/sbin/postfix start

XDEBUG_FILE=/usr/local/etc/php/conf.d/20-xdebug.ini
GATEWAY=$(ip route show dev eth0 | awk '/default/ { print $3 }')
echo "zend_extension=xdebug.so" > $XDEBUG_FILE
echo "xdebug.remote_enable=on" >> $XDEBUG_FILE
echo "xdebug.remote_autostart=off" >> $XDEBUG_FILE
echo "xdebug.remote_host=$GATEWAY" >> $XDEBUG_FILE

CONCRETE5_DIR=/var/www/html

if [ ! -f $CONCRETE5_DIR/application/config/database.php ]; then
   unzip /usr/local/bin/concrete5.zip -d /tmp
   cp -a /tmp/concrete*/* $CONCRETE5_DIR/

   mkdir -p $CONCRETE5_DIR/application/config
   envsubst < /usr/local/etc/concrete5/database.php.template > $CONCRETE5_DIR/application/config/database.php

   git clone https://github.com/BacLuc/bacluc_gryfenberg_theme.git $CONCRETE5_DIR/packages/bacluc_gryfenberg_theme

   #because installing concrete5 is too slow, we use a database backup
   # where the theme is installed and set
   # this is the command how concrete5 was installed
   # $CONCRETE5_DIR/concrete/bin/concrete5 c5:install \
   #    --db-server=localhost \
   #    --db-username=root \
   #    --db-password=root \
   #    --db-database=$DATABASE_NAME \
   #    --site=concrete5_7 \
   #    --starting-point=elemental_blank \
   #    --admin-email=someemail@domain.ch \
   #    --admin-password=password \
   #    --default-locale=en_US
   MYSQL_OPTIONS="-h db -u $MYSQL_USER --password=$MYSQL_PASSWORD $MYSQL_DATABASE"
   until mysql $MYSQL_OPTIONS --execute 'exit'; do
      >&2 echo "MySQL is unavailable - sleeping"
      sleep 1
   done

   >&2 echo "MySQL is up - executing command"

   mysql $MYSQL_OPTIONS < $CONCRETE_SUPPORT_FILES/concrete5_7_with_theme.sql

   concrete/bin/concrete5 orm:generate-proxies
fi

chown -R $FILE_OWNER_UID:www-data $CONCRETE5_DIR
chmod -R 754 $CONCRETE5_DIR
chmod -R 774 $CONCRETE5_DIR/application/files
chmod -R 774 $CONCRETE5_DIR/application/config
chmod -R 754 $CONCRETE5_DIR/application/config/database.php
chmod -R ug+s $CONCRETE5_DIR

service apache2 restart
tail -f /dev/null

#to clear the cache when needed
#$CONCRETE5_DIR/concrete/bin/concrete5 c5:clear-cache
#chmod -R g+w $CONCRETE5_DIR/application/files
