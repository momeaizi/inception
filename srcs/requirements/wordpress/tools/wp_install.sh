
# installing wp

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp



# downloading wordpress files
mkdir -p /var/www/html
cd /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -f latest.zip

# giving permission
chown -R www-data:www-data .





# connect wordpress to mariadb
cd wordpress
wp config create --dbname=wordpress_db --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root



# create admin user
wp core install --url=localhost --title="Mohamed Taha Meaizi"  --admin_user=$WP_ADMIN_LOGIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

# create author user
wp user create  $WP_AUTHOR_LOGIN $WP_AUTHOR_EMAIL    --role=author --user_pass=$WP_AUTHOR_PASSWORD  --allow-root




wget https://www.Adminer.org/latest.php -O /var/www/html/wordpress/Adminer.php



mkdir -p /run/php/

php-fpm7.3 --nodaemonize