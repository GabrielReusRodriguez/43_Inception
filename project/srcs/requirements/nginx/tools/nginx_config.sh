#!/usr/bin/env bash

# First we update the apt repositories
apt update 

# Second we install nginx
apt install nginx -y

#Third we install openssl
apt install openssl -y
