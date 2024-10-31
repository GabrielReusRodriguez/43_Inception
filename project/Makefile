# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: greus-ro <greus-ro@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/13 13:03:46 by gabriel           #+#    #+#              #
#    Updated: 2024/10/31 14:28:30 by greus-ro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	docker-compose.yml
SRC_DIR			=	./srcs
WORDPRESS_DIR	=	/tmp/wordpress_vol
MARIADB_DIR		=	/tmp/mariadb_vol


SHELL = /bin/sh

CURRENT_UID := $(shell id -u)
CURRENT_GID := $(shell id -g)

export CURRENT_UID
export CURRENT_GID

all: up

build:
	@mkdir -p ${WORDPRESS_DIR}
	@mkdir -p ${MARIADB_DIR}

up: build 
	docker compose -f ${SRC_DIR}/${NAME} up -d

down: 
	docker compose -f ${SRC_DIR}/${NAME} down

status:
	docker ps

clean: down
	@rm -rf ${WORDPRESS_DIR}
	@rm -rf ${MARIADB_DIR}
	docker image rm greus-ro_nginx:1.0
	docker image rm greus-ro_mariadb:1.0
	docker image rm greus-ro_wordpress:1.0
	docker volume rm wordpress
	docker volume rm mariadb

re: clean up

.PHONY: all up down status build clean re