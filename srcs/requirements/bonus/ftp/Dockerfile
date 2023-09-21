FROM debian:buster

RUN apt-get update && \
    apt-get install -y vsftpd

COPY ./tools/setup_ftp.sh /setup_ftp.sh

COPY ./conf/vsftpd.conf /etc/vsftpd.conf


CMD ["bash", "/setup_ftp.sh"]
