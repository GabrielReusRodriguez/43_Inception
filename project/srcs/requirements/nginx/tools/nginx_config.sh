#!/usr/bin/env bash

# First we update the apt repositories
apt update 

# Second we install nginx
apt install nginx -y

#Third we install openssl
apt install openssl -y

#Config of nginx.
echo "
http
{
	server 
	{

		listen 80
		root /var/www/html/
		location /
		{
			index index.htm index.html
		}
		location ~\.php
		{
		}

	}
}" > /etc/nginx/nginx.conf


#Then we edit nginx.conf to add TSLv1.2
#echo "-----
#
#ssl_protocols TLSv1.2 TLSv1.3;
#ssl_ciphers HIGH:!aNULL:!MD5;
#ssl_prefer_server_ciphers on;
#
#-----"  >> /etc/nginx/nginx.conf
