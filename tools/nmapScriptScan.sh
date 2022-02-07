#!/bin/bash

#nmap script scan
#figlet NMAP | lolcat
read -p "Please enter the name of script that you wish to run > " scriptName
ls -l /usr/share/nmap/scripts/$scriptName*


read -p "from the following $scriptName scripts above, pllease enter script of your choice (e.g ftp-anon) > " script

read -p "Which IP Address do you wish to run $scriptName scan on ? > " IPADDRESS

read -p "Please enter the port you wish to scan >" port

nmap -p $port --script=$script $IPADDRESS

echo "Scaning for vulnerabilities in $IPADDRESS .../"

nmap -sV --script=vulners -v $IPADDRESS

