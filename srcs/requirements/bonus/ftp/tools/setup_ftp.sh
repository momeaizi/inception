#!/bin/bash


if [ -f "/var/www/html/wordpress/wp-config.php" ]; then

	mkdir -p /var/run/vsftpd/empty

	touch /etc/vsftpd.chroot_list

	adduser --disabled-password --gecos "" $ftp_user

	echo "$ftp_user:$ftp_passwd" | chpasswd

	chown -R $ftp_user:$ftp_user /var/www/html/

	echo $ftp_user >>  /etc/vsftpd.user_list

	/usr/sbin/vsftpd

fi

exit 5
