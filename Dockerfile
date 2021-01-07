FROM debian:buster

FROM nginx


EXPOSE 9000 80 443

RUN apt-get update
RUN apt-get install -y vim


COPY ./srcs/index.html /usr/share/nginx/html