if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then

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




    cd /var/www/html/wordpress


    # connect wordpress to mariadb
    wp config create --dbname=wordpress_db --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root



    # create admin user
    wp core install --url=$DOMAIN_NAME --title="reddit"  --admin_user=$WP_ADMIN_LOGIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

    # create author user
    wp user create  $WP_AUTHOR_LOGIN $WP_AUTHOR_EMAIL    --role=author --user_pass=$WP_AUTHOR_PASSWORD  --allow-root

    # setup redis cache
    wp config set WP_CACHE          true    --raw 	--allow-root
    wp config set WP_REDIS_HOST     redis   		--allow-root
    wp config set WP_REDIS_PORT     6379    --raw 	--allow-root
    wp plugin install redis-cache   --activate 		--allow-root
    wp redis enable 					--allow-root
    wp plugin update --all 				--allow-root

    # give the ownership of the wordpress directory to www-data
    chown -R www-data:www-data .
    # give the permissions to the group to enable both php-fpm and ftp to work with this directory
    chmod -R 775 .


fi

if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then
    exit 5
fi


php-fpm7.3 -F
