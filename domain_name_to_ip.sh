#!/bin/bash

setterm -foreground green -background blue

echo "Enter domain name: "
read domain_name
nslookup "$domain_name" | grep -E  '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]' > /dev/pts/0
ping $domain_name > /dev/pts/0



