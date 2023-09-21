FROM debian:buster

RUN apt-get --no-install-recommends update && \
	apt-get --no-install-recommends install -y php php-mysql wget && \
    mkdir -p /var/www/html/ && \
    wget --no-check-certificate https://www.adminer.org/latest.php -O /var/www/html/adminer.php


EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "/var/www/html/adminer.php"]
