#!/bin/bash
#Forwards a port to vps and then starts rails
#Works on any machine from anywhere for dev
#Make sure to include port number
#Example: ./runserver 3000
ssh -f -R 0.0.0.0:$2:localhost:$2 cclub@t4ls.duckdns.org -N
echo URL FOR REVERSE TUNNEL: http://t4ls.duckdns.org:$2
if [ "$(hostname)" == "CS35F15-004" ]; then
cd $1;sudo rails server -b 0.0.0.0 -p $2 -u
fi
if [ "$(hostname)" != "CS35F15-004" ]; then
cd $1;rails server -b 0.0.0.0 -p $2 -u
fi

