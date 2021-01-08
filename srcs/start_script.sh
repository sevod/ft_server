#!/bin/bash

service nginx start
service php7.3-fpm start
service mysql start

unzip phpMyAdmin-5.0.4-all-languages.zip
mkdir /var/www/html/phpmyadmin
cp -R phpMyAdmin-5.0.4-all-languages/* /var/www/html/phpmyadmin
rm -Rf phpMyAdmin-5.0.4-all-languages
rm -Rf phpMyAdmin-5.0.4-all-languages.zip


