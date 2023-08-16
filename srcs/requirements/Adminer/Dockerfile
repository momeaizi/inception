FROM debian:buster

RUN apt-get --no-install-recommends update && \
	apt-get --no-install-recommends install -y php wget && \
    mkdir -p /var/www/html/ && \
    wget https://www.adminer.org/latest.php -O /var/www/html/adminer.php


EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/adminer.php"]
