#!/bin/sh
exec 1>&2
echo 'Acquire::socks::proxy "'$HTTP_PROXY'";' > /etc/apt/apt.conf.d/12proxy
apt-get -y update
apt-get -y install inetutils-ping curl netcat socat
ping -c 3 ftp.sunet.se
