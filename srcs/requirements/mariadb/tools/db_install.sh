service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS wordpress_db ;"
mysql -e "CREATE USER IF NOT EXISTS $MYSQL_USER@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;"
mysql -e "GRANT ALL PRIVILEGES ON wordpress_db.* TO $MYSQL_USER@'%' ;"

service mysql stop

mysqld_safe