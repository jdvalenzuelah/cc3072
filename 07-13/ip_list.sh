#!/usr/bin/zsh

# Usage ./ip_list.sh <url>
#    eg: ./ip_list.sh uvg.edu.gt


wget $1 -O index.html
grep index.html -oPe "href=\"https://.*\"" | cut -d "/" -f 3 | sed "s/\".*//g" | sort -u > domains.txt
# TODO: remove unwanted domains from domains.txt
while read line; do host "$line"; done < domains.txt | grep -oPe "has address.*" | sed "s/has address //g" > ips.txt