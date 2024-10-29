#!/usr/bin/env bash

# First we update the apt repositories
apt update 

# Second we install nginx
apt install mariadb-server -y

#Allow to run the daemon of mysql
# Purge and re-create /var/lib/mysql with appropriate ownership
# ensure that /var/run/mysqld (used for socket and lock files) is writable regardless of the UID our mysqld instance ends up having at runtime
#mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld

mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && chmod 777 /run/mysqld

touch /run/mysqld/mysqld.sock
chmod 777 /run/mysqld/mysqld.sock
chown mysql:mysql /run/mysqld/mysqld.sock

#We make the installation secure.
#mysql_secure_installation

#We copy the config of mysql, we left it at /tmp
cp /tmp/mariadb.conf /etc/mysql/mariadb.conf.d/
echo "${MARIADB_ROOT_PASSWORD}" > /tmp/log.txt
