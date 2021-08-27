#!/bin/sh
exec 1>&2
apt-get -y update
apt-get -y install inetutils-ping curl netcat
ping -c 3 ftp.sunet.se
