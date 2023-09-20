#!/bin/bash

adduser --disabled-password --gecos "" $ftp_user

echo "$ftp_user:$ftp_passwd" | chpasswd

echo $ftp_user >>  /etc/vsftpd.user_list

chown $ftp_user:$ftp_user /var/www/html/


/usr/sbin/vsftpd
