#!/usr/bin/env bash

# First we update the apt repositories
apt update 

# Second we install nginx
apt install nginx -y

#Third we install openssl
apt install openssl -y

mkdir -p /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/greus-ro.crt \
	-keyout /etc/nginx/ssl/greus-ro.key \
	-subj "/C=ES/ST=Barcelona/L=Barcelona/O=42 School/OU=greus-ro/CN=greus-ro"

#Changing owner of data to allow execu with user www-data,not root.
#Executing with root is NOT secure.
#chown  www-data /etc/nginx/ssl/greus-ro.crt
#chown  www-data /etc/nginx/ssl/greus-ro.key
#chown  --recursive  www-data  /var/lib/nginx
