#!/bin/bash
#Forwards a port to vps and then starts rails
#Works on any machine from anywhere for dev
#Make sure to include port number
#Example: ./runserver 3000
ssh -f -R 0.0.0.0:$1:localhost:$1 cclub@t4ls.duckdns.org -N
echo http://t4ls.duckdns.org:$1
if [ "$(hostname)" == "CS35F15-004" ]; then
cd blog;sudo rails server -b 0.0.0.0 -p $1 -u
fi
if [ "$(hostname)" != "CS35F15-004" ]; then
cd blog;rails server -b 0.0.0.0 -p $1 -u
fi

