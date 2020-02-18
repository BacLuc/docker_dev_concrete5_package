#!/bin/bash
# Set PHP timezone
#/bin/sed -i "s/\;date\.timezone\ \=/date\.timezone\ \=\ ${DATE_TIMEZONE}/" /etc/php/7.0/apache2/php.ini

XDEBUG_FILE=/usr/local/etc/php/conf.d/20-xdebug.ini
GATEWAY=$(ip route show dev eth0 | awk '/default/ { print $3 }')
echo "zend_extension=xdebug.so" > $XDEBUG_FILE
echo "xdebug.remote_enable=on" >> $XDEBUG_FILE
echo "xdebug.remote_autostart=off" >> $XDEBUG_FILE
echo "xdebug.remote_host=$GATEWAY" >> $XDEBUG_FILE

CONCRETE5_DIR=/var/www/html

chown -R concrete5:www-data $CONCRETE5_DIR

if [ ! -f $CONCRETE5_DIR/application/config/database.php ]; then
   su concrete5
   unzip  -qq /usr/local/bin/concrete5.zip -d /tmp
   cp -a /tmp/concrete*/* $CONCRETE5_DIR/

   mkdir -p $CONCRETE5_DIR/application/config

   git clone https://github.com/BacLuc/bacluc_gryfenberg_theme.git $CONCRETE5_DIR/packages/bacluc_gryfenberg_theme

   concrete/bin/concrete5 orm:generate-proxies
   su
   chown -R concrete5:www-data $CONCRETE5_DIR
fi

chmod -R ug+s $CONCRETE5_DIR
chmod -R 754 $CONCRETE5_DIR
chmod -R 774 $CONCRETE5_DIR/application/files
chmod -R ug+w $CONCRETE5_DIR/application/files
chmod -R 774 $CONCRETE5_DIR/application/config
chmod -R ug+w $CONCRETE5_DIR/application/config
chmod -R 754 $CONCRETE5_DIR/application/config/database.php
chmod -R 774 $CONCRETE5_DIR/packages
chmod -R ug+w $CONCRETE5_DIR/packages

/usr/sbin/apache2ctl -DFOREGROUND
