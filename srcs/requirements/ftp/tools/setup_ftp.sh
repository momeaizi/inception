#!/bin/bash
ftp_user=ftpuser9
ftp_passwd=1337@tmp@ftp


adduser --disabled-password --gecos "" $ftp_user

echo "$ftp_user:$ftp_passwd" | chpasswd
