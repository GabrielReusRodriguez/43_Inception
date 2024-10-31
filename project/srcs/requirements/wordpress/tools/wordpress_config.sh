#!/usr/bin/env bash

# First we update the apt repositories
#apt update 

# Second we install nginx
# apt install php-fpm php-mysql -y

#WE install php and the plugins
sudo apt install -y php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl wget


#Creamos el usuario para  ejecutarlo SIN necesidad de usar
#addgroup --gid $GID nonroot && \
#adduser --uid $UID --gid $GID --disabled-password --gecos "" nonroot && \
#echo 'nonroot ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

sudo mkdir -p /run/php
#ls /usr/sbin/php*

#I create the folder

sudo mkdir -p /var/www/html/wordpress
#sudo mkdir -p /var/www/html/tmp

#I download wordpress
#cd /var/www/html/tmp
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz 
sudo cp -r /tmp/wordpress/* /var/www/html/wordpress/

sudo chown -R nonroot:nonroot  /var/www/html/

#mv /tmp/wordpress /var/www/html/

#sudo rm -rf /var/www/html/tmp


#chown -R www-data:www-data /var/www/html/
#sudo chmod -R 777 /var/www/html/
#sudo chmod -R 777 /var/log

#We change permissions.
##chown --recursive www-data: /var/www/html/$DOMAIN_NAME