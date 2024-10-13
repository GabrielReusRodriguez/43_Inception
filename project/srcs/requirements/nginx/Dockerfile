FROM debian:bullseye

WORKDIR /tmp/

# We copy the script to finish the configuration.
COPY ["./tools/nginx_config.sh", "./tools/nginx_start.sh"] /usr/local/bin

#RUN is used when the image is build.
# We install the nginx and config it.
RUN	apt update && apt install nginx && nginx_config.sh 

#CMD is used when we start the container.
CMD ["nginx_start.sh"]
