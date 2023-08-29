FROM debian:buster

RUN apt-get --no-install-recommends update && \
	apt-get --no-install-recommends install -y nginx && \
	apt-get --no-install-recommends install -y openssl && \
	mkdir /etc/nginx/ssl && \
	cd /etc/nginx/ssl && \
	openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout ssl_cert.key -out ssl_cert.crt -subj '/C=MA/ST=MA/L=Benguerir/O=test/OU=IT/CN=mydomain.com'

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 8888

CMD ["nginx", "-g", "daemon off;"]
