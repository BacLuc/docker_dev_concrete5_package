#CREATE DATABASE concrete5 collate utf8mb4_bin;
#GRANT ALL PRIVILEGES ON concrete5.* TO 'concrete5'@'%' IDENTIFIED BY 'concrete5';
include .env
export $(shell sed 's/=.*//' .env)
export DROP_DB="DROP DATABASE IF EXISTS ${MYSQL_DATABASE}"
export CREATE_DB="CREATE DATABASE ${MYSQL_DATABASE} collate utf8mb4_bin;"
export GRANT="GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

start:
	docker-compose up -d

setup-db:
	docker-compose exec concrete5 rm -f /var/www/html/application/config/database.php
	docker-compose exec -w /var/www/html concrete5 concrete/bin/concrete5 \
		c5:install \
		--db-server=db \
		--db-username=${MYSQL_USER}  \
		--db-password=${MYSQL_PASSWORD}  \
		--db-database=${MYSQL_PASSWORD} \
		--admin-password=${CONCRETE5_ADMIN_PASSWORD} \
		--allow-as-root \
		-n \
		--ignore-warnings
	docker-compose exec -w /var/www/html concrete5 concrete/bin/concrete5 c5:package-install --allow-as-root bacluc_gryfenberg_theme
	docker-compose exec -T db mysql --password=${MYSQL_ROOT_PASSWORD} concrete5 < docker/activate_bacluc_gryfenberg_theme.sql

wait:
	sleep 60

rebuild: remove start wait setup-db

grant:
	docker-compose exec db mysql -p -e ${GRANT}

stop:
	docker-compose down

remove-db:
	docker-compose down -v

remove-files:
	rm -rf concrete5
	rm -rf apache_log

remove: remove-db remove-files
