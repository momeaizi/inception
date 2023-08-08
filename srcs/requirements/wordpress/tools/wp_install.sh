mkdir /var/www/html
cd /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip
chown -R www-data:www-data /var/www/html/wordpress





mkdir -p /run/php/

php-fpm7.3 --nodaemonize