FROM debian:buster

#разобраться с версией линукс
#FROM nginx



#EXPOSE 9000 80 443

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y procps
RUN apt-get install -y nginx
#пеерпроверить, машина убунту
RUN update-rc.d nginx enable



COPY ./srcs/index.html /usr/share/nginx/html