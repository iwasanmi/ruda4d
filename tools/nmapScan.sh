#!/bin/bash

# Nmap scan

#echo "please enter the subnet:"
read -p "Please enter your subnet > " SUBNET

for IP in $(seq 1 254 ); do #| grep "bytes from"); do
	nmap -sS -p80 $SUBNET.$IP
done
