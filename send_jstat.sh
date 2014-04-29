#!/bin/sh

/bin/bash /usr/local/nagios/libexec/check_jstat.sh -j Netty -w 60 -c 80 | /usr/local/nagios/bin/send_nsca -H 10.232.18.144 -p 5667 -d ";" -to 10 -c /usr/local/nagios/etc/send_nsca.cfg
