FROM debian:buster
RUN apt-get update

RUN apt-get install -y libc-bin
RUN apt-get install -y vim
RUN apt-get install -y openssl

FROM php:7.2-fpm
WORKDIR /var/www
RUN docker-php-ext-install pdo_mysql
COPY ./ /var/www
USER root
EXPOSE 9000 80 443
CMD ["php-fpm"]

FROM nginx
COPY ./srcs/index.html /usr/share/nginx/html

