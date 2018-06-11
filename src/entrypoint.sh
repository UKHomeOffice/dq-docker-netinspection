#!/bin/bash

set -e

NET=$1
HOST=$2
FILE=$3

if [ -x $NET ]; then NET=eth0; fi
if [ -x $HOST ]; then HOST=127.0.0.1; fi
if [ -x $FILE ]; then FILE=/out/file.pcap; fi

tcpdump -A -n -w $FILE -s 0 'tcp port 80 or port 443 or port 10443 or port 8080 or port 8081 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' -i $NET
