#!/bin/bash

setterm -foreground green -background blue

echo "Enter domain name: "
read domain_name 
ping $domain_name > /dev/pts/0



