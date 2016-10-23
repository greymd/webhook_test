#!/bin/bash
while true;do nc -l 8080 <<<"HTTP/1.0 200 Ok" > /dev/null && git pull origin master && rsync -a ./www/html /var/www/html ;done
