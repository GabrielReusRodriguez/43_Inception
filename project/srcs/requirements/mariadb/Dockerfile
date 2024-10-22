FROM debian:bullseye

WORKDIR /tmp/

#COPY  --chown=www-data --chmod=744 "./tools/mariadb_config.sh" "./tools/mariadb_start.sh" /usr/local/bin/

COPY  --chmod=744 "./tools/mariadb_config.sh" "./tools/mariadb_start.sh" /usr/local/bin/

#RUN is used when the image is build.
RUN	mariadb_config.sh

#EXPOSE 3306

CMD mariadb_start.sh

