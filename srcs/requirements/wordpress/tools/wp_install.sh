# cd /var/www/html
# wget https://wordpress.org/latest.zip
# unzip latest.zip
# chown -R www-data:www-data /var/www/html/wordpress

service php7.3-fpm start
php-fpm7.3 --nodaemonize