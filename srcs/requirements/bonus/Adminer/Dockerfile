FROM debian:buster

RUN apt-get --no-install-recommends update && \
	apt-get --no-install-recommends install -y php php-mysql wget && \
    mkdir -p /var/www/html/ && \
    wget --no-check-certificate https://www.adminer.org/latest.php -O /var/www/html/adminer.php


CMD ["php", "-S", "adminer:8080", "/var/www/html/adminer.php"]
