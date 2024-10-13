#!/usr/bin/env bash

# First we update the apt repositories
sudo apt update 

# Second we install nginx
sudo apt install nginx 

#Third we install openssl
sudo apt install openssl

#Then we edit nginx.conf to add TSLv1.2
echo "-----

ssl_protocols TLSv1.2 TLSv1.3;

ssl_ciphers HIGH:!aNULL:!MD5;
ssl_prefer_server_ciphers on;

-----"  >> /etc/nginx/nginx.conf
