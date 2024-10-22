FROM debian:bullseye

WORKDIR /tmp/

COPY  --chmod=744 "./tools/wordpress_config.sh" "./tools/wordpress_start.sh" /usr/local/bin/

#RUN is used when the image is build.
RUN	wordpress_config.sh 

#COPY  "./conf/nginx.conf" "/etc/nginx/conf.d" 


#USER www-data
#CMD is used when we start the container.
CMD wordpress_start.sh
