#!/usr/bin/zsh

while read line; do sleep "1";  echo $L;  done < smtp_req.txt | nc -C -v --ssl smtp.gmail.com 465