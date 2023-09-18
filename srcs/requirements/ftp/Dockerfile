FROM debian:buster

RUN apt-get update && \
    apt-get install -y vsftpd

COPY ./tools/setup_ftp.sh /setup_ftp.sh

CMD ["bash", "/setup_ftp.sh"]