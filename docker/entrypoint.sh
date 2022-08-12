#!/bin/bash
# Set PHP timezone
#/bin/sed -i "s/\;date\.timezone\ \=/date\.timezone\ \=\ ${DATE_TIMEZONE}/" /etc/php/7.0/apache2/php.ini
set -eu
XDEBUG_FILE=/usr/local/etc/php/conf.d/20-xdebug.ini
GATEWAY=$(ip route show dev eth0 | awk '/default/ { print $3 }')
echo "zend_extension=xdebug.so" > $XDEBUG_FILE
echo "xdebug.mode=debug" >> $XDEBUG_FILE
echo "xdebug.remote_autostart=off" >> $XDEBUG_FILE
echo "xdebug.client_host=$GATEWAY" >> $XDEBUG_FILE

CONCRETE5_DIR=/var/www/html

if [ ! -f $CONCRETE5_DIR/application/config/database.php ]; then
   rm -rf /tmp/concrete*
   unzip  -qq /usr/local/bin/concrete5.zip -d /tmp
   cd $CONCRETE5_DIR
   rm -rf '!(packages)'
   cd ..
   cp -a /tmp/concrete*/* $CONCRETE5_DIR/

   mkdir -p $CONCRETE5_DIR/application/config

   rm -rf $CONCRETE5_DIR/packages/bacluc_gryfenberg_theme
   git clone https://github.com/BacLuc/bacluc_gryfenberg_theme.git $CONCRETE5_DIR/packages/bacluc_gryfenberg_theme
fi
chown -R concrete5 $CONCRETE5_DIR

apache2-foreground
