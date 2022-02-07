#!/bin/bash

#nikto scan

read -p "Please enter your target address >" address

nikto -h $address

