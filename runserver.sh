#!/bin/bash
#Forwards a port to vps and then starts rails
#Works on any machine from anywhere for dev
#Make sure to include port number
#Example: ./runserver 3000
echo http://t4ls.duckdns.org:$1
ssh -f -R 0.0.0.0:$1:localhost:$1 cclub@t4ls.duckdns.org -N
cd blog;sudo rails server -b 0.0.0.0 -p $1 -u
