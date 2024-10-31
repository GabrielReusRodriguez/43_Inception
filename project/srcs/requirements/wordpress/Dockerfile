FROM debian:bullseye
ARG UID
ARG GID

WORKDIR /tmp/

COPY  --chmod=755 "./tools/wordpress_config.sh" "./tools/wordpress_start.sh" /usr/local/bin/

#Creamos el usuario para  ejecutarlo SIN necesidad de usar ROOT
RUN addgroup --gid $GID nonroot && \
    adduser --uid $UID --gid $GID --disabled-password --gecos "" nonroot

RUN apt update
RUN apt install -y sudo
RUN echo 'nonroot ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER nonroot

#RUN is used when the image is build.
RUN	wordpress_config.sh 

#    echo 'nonroot ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers


#COPY  "./conf/nginx.conf" "/etc/nginx/conf.d" 

#CMD is used when we start the container.
CMD wordpress_start.sh


