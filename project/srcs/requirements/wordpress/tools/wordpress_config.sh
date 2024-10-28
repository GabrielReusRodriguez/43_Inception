#!/usr/bin/env bash

# First we update the apt repositories
apt update 

# Second we install nginx
# apt install php-fpm php-mysql -y

#WE install php and the plugins
apt install -y php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl wget


mkdir -p /run/php
#ls /usr/sbin/php*

#I create the folder
mkdir -p /var/www/html/wordpress
mkdir -p /var/www/html/tmp

#I download wordpress
cd /var/www/html/tmp
wget https://wordpress.org/latest.tar.gz
tar xf latest.tar.gz
mv /var/www/html/tmp/wordpress/* /var/www/html/wordpress
rm -rf /var/www/html/tmp

#We change permissions.
##chown --recursive www-data: /var/www/html/$DOMAIN_NAME