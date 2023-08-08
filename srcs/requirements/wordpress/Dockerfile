FROM debian:buster

RUN apt-get update && apt-get install -y wget unzip php7.3 php7.3-fpm

COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/pool.d/www.conf


COPY ./tools/wp_install.sh /wp_install.sh


CMD ["bash", "/wp_install.sh"]
