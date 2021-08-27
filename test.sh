#!/bin/sh
exec 1>&2
grep -ri proxy /var/log
find /etc
#apt-get -y update
#apt-get -y install inetutils-ping curl netcat socat
#ping -c 3 ftp.sunet.se
