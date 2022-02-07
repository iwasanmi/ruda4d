#!/bin/bash
#simple pingsweep

#echo "please enter the subnet:"
read -p "Please enter your subnet > " SUBNET

for IP in $(seq 1 254 ); do #| grep "bytes from"); do
	ping -c 1 $SUBNET.$IP
done
