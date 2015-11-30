#!/bin/bash
#Forwards port to vps and then starts rails
#Works on any machine from anywhere for dev
#http://t4ls.duckdns.org:3000/
cd blog
ssh -f -R 0.0.0.0:3000:localhost:3000 cclub@t4ls.duckdns.org -N 
rails server -b 0.0.0.0 -p 3000 -u
