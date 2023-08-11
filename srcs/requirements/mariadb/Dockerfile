FROM debian:buster

RUN apt-get --no-install-recommends update && \
	apt-get --no-install-recommends install -y mariadb-server
	
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/db_install.sh /db_install.sh


EXPOSE 3306

CMD ["bash", "/db_install.sh"]
