#!/bin/bash

service nginx start
service php7.3-fpm start
service mysql start

#wordpress-SQL
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" | mysql -u root --skip-password
echo "source /wordpress.sql;" | mysql -u root --skip-password wordpress
echo "GRANT ALL ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '123456';" | mysql -u root --skip-password


#wordpress
unzip /wordpress-5.6.zip
mkdir /var/www/html/wordpress
cp -R /wordpress/* /var/www/html/wordpress
rm -Rf /wordpress-5.6.zip
rm -Rf /wordpress

#phpMyAdmin
unzip phpMyAdmin-5.0.4-all-languages.zip
mkdir /var/www/html/wordpress/phpmyadmin
mkdir /var/www/html/wordpress/phpmyadmin/tmp/
cp -R phpMyAdmin-5.0.4-all-languages/* /var/www/html/wordpress/phpmyadmin
rm -Rf phpMyAdmin-5.0.4-all-languages
rm -Rf phpMyAdmin-5.0.4-all-languages.zip

