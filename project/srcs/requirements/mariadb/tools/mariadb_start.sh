#!/usr/bin/env bash


if [ ! -f /tmp/db1.sql ]; then 

    /etc/init.d/mariadb start
    echo "GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" >> db1.sql
    echo "CREATE DATABASE IF NOT EXISTS ${MARIADB_DB_NAME} ;" >> db1.sql
    #echo "CREATE USER IF NOT EXISTS '${MARIADB_DB_USER}'@'%' IDENTIFIED BY '${MARIADB_DB_PWD}' ;" >> db1.sql
    echo "CREATE USER IF NOT EXISTS '${MARIADB_DB_USER}'@'%' IDENTIFIED BY '${MARIADB_DB_PWD}' ;" >> db1.sql
    echo "GRANT ALL ON ${MARIADB_DB_NAME}.* TO '${MARIADB_DB_USER}'@'%' ;" >> db1.sql
    #echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}' ;" >> db1.sql
    echo "FLUSH PRIVILEGES;" >> db1.sql

    mysql -u root < db1.sql
    /etc/init.d/mariadb stop

fi

mysqld