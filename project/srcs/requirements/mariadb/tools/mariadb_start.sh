#!/usr/bin/env bash

#/etc/init.d/mysql start
#/etc/init.d/mariadb start --skip-grant-tables --skip-networking
/etc/init.d/mariadb start --skip-grant-tables --skip-networking 
#/etc/init.d/mariadb start 


#We MUST do it here because when we build the container we do not have .env_file access

#echo "SET PASSWORD FOR 'root'@'localhost'  = PASSWORD('${MARIADB_ROOT_PASSWORD}');" > db1.sql
#echo "SET PASSWORD FOR 'root'@'localhost'  = PASSWORD('asd');" > db1.sql
#echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD '${MARIADB_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" >> db1.sql
echo "GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" >> db1.sql
echo "CREATE DATABASE IF NOT EXISTS ${MARIADB_DB_NAME} ;" >> db1.sql
#echo "CREATE USER IF NOT EXISTS '${MARIADB_DB_USER}'@'%' IDENTIFIED BY '${MARIADB_DB_PWD}' ;" >> db1.sql
echo "CREATE USER IF NOT EXISTS '${MARIADB_DB_USER}'@'%' IDENTIFIED BY '${MARIADB_DB_PWD}' ;" >> db1.sql
echo "GRANT ALL ON ${MARIADB_DB_NAME}.* TO '${MARIADB_DB_USER}'@'%' ;" >> db1.sql
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql -u root <  db1.sql

#mysql -u root  --skip-password <  db1.sql

/etc/init.d/mariadb stop

#mysqld --bind-address=0.0.0.0
mysqld