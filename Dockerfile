FROM debian:buster

FROM nginx
COPY ./srcs/index.html /usr/share/nginx/html

RUN apt-get update
RUN apt-get install -y vim

