#!/bin/bash

setterm -foreground green -background blue


function network_diagnostics(){

	echo "Enter domain name: "
	read domain_name
	dig +short $domain_name > /dev/pts/0

	traceroute $domain_name

	return 0
}

function get_system_cpu_information(){

	architecture=$( lscpu | grep -oP 'Architecture:\s*\K.+' )
	echo $architecture
}

#network_diagnostics
get_system_cpu_information

exit 0
