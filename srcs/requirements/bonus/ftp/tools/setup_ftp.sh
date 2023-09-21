#!/bin/bash

mkdir -p /var/run/vsftpd/empty

touch /etc/vsftpd.chroot_list

adduser --disabled-password --gecos "" $ftp_user

echo "$ftp_user:$ftp_passwd" | chpasswd

usermod -aG www-data $ftp_user

echo $ftp_user >>  /etc/vsftpd.user_list


/usr/sbin/vsftpd
