service mysql start

mysql -u root  -e "CREATE DATABASE wordpress_55;"
mysql -u root  -e "USE wordpress_55;"
mysql -u root  -e "CREATE USER '$USER'@'localhost' IDENTIFIED BY 'PASSWORD';"
mysql -u root  -e "GRANT ALL PRIVILEGES ON wordpress_55.* TO '$USER'@'localhost';"

mysql -u root  -e "FLUSH PRIVILEGES;"

mysqld_safe