docker run -d -p 8080:80 \
 -e XDEBUG_CONFIG="$(hostname -I | awk '{print $1}')" \
 -e LOG_STDOUT=true \
 -e LOG_STDERR=true \
 -e LOG_LEVEL=debug \
 -v $(pwd):/var/www/html \
 --name dev-basictable \
 bacluc/dev-concrete5-package 