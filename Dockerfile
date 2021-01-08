FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y default-mysql-server
#RUN apt-get install -y wget
RUN apt-get install -y zip
ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip /

RUN apt-get install -y vim
RUN apt-get install -y procps


COPY ./srcs/index.html /var/www/html/
COPY ./srcs/index.php /var/www/html/
COPY ./srcs/default /etc/nginx/sites-enabled/default
COPY ./srcs/start_script.sh start_script.sh

EXPOSE 80 443

#nginx start
#CMD ["bash", "start_script.sh"]
CMD bash start_script.sh && tail -f /dev/null
#CMD bash /start_script.sh /bin/sh -c 'bash /s…
#ENTRYPOINT ["nginx", "-g", "daemon off;"]
#не работают
#ENTRYPOINT ["/etc/init.d/php7.3-fpm", "start"]
#ENTRYPOINT /etc/init.d/php7.3-fpm start;
#ENTRYPOINT nginx /bin/sh -c nginx