SHELL := /bin/bash

include Make-install-package
#CREATE DATABASE concrete5 collate utf8mb4_bin;
#GRANT ALL PRIVILEGES ON concrete5.* TO 'concrete5'@'%' IDENTIFIED BY 'concrete5';
include .env
export $(shell sed 's/=.*//' .env)
export DROP_DB="DROP DATABASE IF EXISTS ${MYSQL_DATABASE}"
export CREATE_DB="CREATE DATABASE ${MYSQL_DATABASE} collate utf8mb4_bin;"
export CONCRETE5_SERVICE=$(shell docker compose ps -q concrete5)
export GRANT="GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
export USER=$(shell whoami)

start:
	docker compose up -d

setup-db:
	docker compose exec concrete5 rm -f /var/www/html/application/config/database.php
	docker compose exec db mysql --password=${MYSQL_ROOT_PASSWORD} -e "ALTER DATABASE ${MYSQL_DATABASE} CHARACTER SET = 'utf8mb4'  COLLATE = 'utf8mb4_general_ci';"
	docker compose exec -u concrete5 concrete5 concrete/bin/concrete5 \
		c5:install \
		--db-server=db \
		--db-username=${MYSQL_USER}  \
		--db-password=${MYSQL_PASSWORD}  \
		--db-database=${MYSQL_PASSWORD} \
		--admin-password=${CONCRETE5_ADMIN_PASSWORD} \
		-n \
		--ignore-warnings
	docker compose exec  --user concrete5 concrete5 concrete/bin/concrete5 c5:package-install bacluc_gryfenberg_theme
	docker compose exec -T db mysql --password=${MYSQL_ROOT_PASSWORD} concrete5 < docker/activate_bacluc_gryfenberg_theme.sql

wait:
	sleep 60

rebuild: remove start wait setup-db

grant:
	docker compose exec db mysql -p -e ${GRANT}

stop:
	docker compose down

remove-db:
	docker compose down -v

remove-files:
	set +x
	rm -rf 'concrete5/!(packages)'

sync-into-container:
	docker cp concrete5/. ${CONCRETE5_SERVICE}:/var/www/html

sync-from-container:
	docker cp ${CONCRETE5_SERVICE}:/var/www/html/. concrete5

remove: remove-db remove-files

clear-cache:
	docker compose exec --user concrete5 concrete5 concrete/bin/concrete5 c5:clear-cache

build-concrete5:
	docker compose build concrete5

logs-concrete5:
	docker compose logs concrete5

profiler-activate:
	docker compose exec concrete5 sh -c "echo \"xdebug.profiler_enable=1\" >> /usr/local/etc/php/conf.d/20-xdebug.ini"
	docker compose exec concrete5 sh -c "echo \"xdebug.profiler_output_dir=/tmp\" >> /usr/local/etc/php/conf.d/20-xdebug.ini"
	docker compose exec concrete5 service apache2 reload

restore-backup:
	docker compose exec db mysql --password=${MYSQL_ROOT_PASSWORD} -e "ALTER DATABASE ${MYSQL_DATABASE} CHARACTER SET = 'utf8mb4'  COLLATE = 'utf8mb4_general_ci';"
	docker compose exec -T db mysql --password=${MYSQL_ROOT_PASSWORD} concrete5 < docker/backup.sql

backup:
	docker compose exec -T db mysqldump --password=${MYSQL_ROOT_PASSWORD} concrete5 > docker/$(shell date '+%Y-%m-%d-%H-%M-%S')-backup.sql
