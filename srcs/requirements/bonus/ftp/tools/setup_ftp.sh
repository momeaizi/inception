#!/bin/sh

if [ ! -f "/etc/vsftpd/vsftpd.conf.bak" ]; then

    mkdir -p /var/www/html
    mkdir -p /var/run/vsftpd/empty

    cp /etc/vsftpd.conf /etc/vsftpd.conf.bak
    mv /tmp/vsftpd.conf /etc/vsftpd.conf

    # Add the FTP_USER, change his password and declare him as the owner of wordpress folder and all subfolders
    adduser --disabled-password --gecos "" $ftp_user
	
    echo "$ftp_user:$ftp_passwd" | chpasswd 

    chown -R $ftp_user:$ftp_user /var/www/html/wordpress

    echo $ftp_user >> /etc/vsftpd.userlist

fi


vsftpd 