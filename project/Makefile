# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gabriel <gabriel@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/13 13:03:46 by gabriel           #+#    #+#              #
#    Updated: 2024/10/14 22:56:14 by gabriel          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=docker-compose.yml
SRC_FOLDER=./srcs

all: up

up: 
	docker compose -f ${SRC_FOLDER}/${NAME} up -d

down: 
	docker compose -f ${SRC_FOLDER}/${NAME} down

start:
	docker compose -f ${SRC_FOLDER}/${NAME} start

stop:
	docker compose -f ${SRC_FOLDER}/${NAME} stop

status:
	docker ps



