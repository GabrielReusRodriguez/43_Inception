# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: greus-ro <greus-ro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/13 13:03:46 by gabriel           #+#    #+#              #
#    Updated: 2024/10/20 11:37:52 by greus-ro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	docker-compose.yml
SRC_DIR			=	./srcs
WORDPRESS_DIR	=	./wordpress
MARIADB_DIR		=	./mariadb

all: build up

build:
	@mkdir -p ${WORDPRESS_DIR}
	@mkdir -p ${MARIADB_DIR}

up: 
	docker compose -f ${SRC_DIR}/${NAME} up -d

down: 
	docker compose -f ${SRC_DIR}/${NAME} down

status:
	docker ps

clean: down
	@rm -r ${WORDPRESS_DIR}
	@rm -r ${MARIADB_DIR}
	docker image rm greus-ro_nginx:1.0
	docker volume rm wordpress

.PHONY: all up down status build clean