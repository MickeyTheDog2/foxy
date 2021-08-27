#!/bin/sh
exec 1>&2
find /proc -maxdepth 2 -name cmdline -exec echo '{}' \; -exec sh -c 'cat "{}" | tr "\0" " "' \; -exec echo \;
#apt-get -y update
#apt-get -y install inetutils-ping curl netcat socat
#ping -c 3 ftp.sunet.se
