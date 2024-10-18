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
