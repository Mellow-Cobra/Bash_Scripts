#!/bin/bash

setterm -foreground green -background blue


function network_diagnostics(){

	echo "Enter domain name: "
	read domain_name
	dig +short $domain_name > /dev/pts/0

	traceroute $domain_name

	return 0
}

network_diagnostics


exit 0
