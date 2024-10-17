# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gabriel <gabriel@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/13 13:03:46 by gabriel           #+#    #+#              #
#    Updated: 2024/10/17 22:30:33 by gabriel          ###   ########.fr        #
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

clean:
	@rm -r ${WORDPRESS_DIR}
	@rm -r ${MARIADB_DIR}

fclean: down clean

.PHONY: all up down status build