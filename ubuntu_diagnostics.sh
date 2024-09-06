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
	cpu_model=$( lscpu | grep -oP 'Model name:\s*\K.+' )
	echo $cpu_model
	vendor_id=$( lscpu | grep -oP 'Vendor ID:\s*\K.+' )
	echo $vendor_id
}

function get_system


network_diagnostics
get_system_cpu_information

exit 0
