#!/usr/bin/zsh

# Usage ./ping_sweep.sh
#    eg: ./ping_sweep.sh

PING_COUNT=1
IP_PREFIX=192.168.0

for ip in "$IP_PREFIX."{0..255}; do
    ping -c $PING_COUNT $ip 2>&1 >/dev/null
    ping_result=$? # failed ping returns non zero exit code
    if [ "$ping_result" -eq "0" ]; then echo $ip; fi
done    