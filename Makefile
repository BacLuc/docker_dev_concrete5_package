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
	docker-compose exec db mysql -e ${DROP_DB}
	docker-compose exec db mysql -e ${CREATE_DB}
	docker-compose exec db mysql -e ${GRANT}
	docker-compose exec -T db mysql concrete5 < docker/concrete5_7_with_theme.sql

grant:
	docker-compose exec db mysql -p -e ${GRANT}

stop:
	docker-compose down

remove:
	docker-compose down -v