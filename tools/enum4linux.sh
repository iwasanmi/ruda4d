#!/bin/bash

#nikto scan

read -p "Please enter your target address >" address

enum4linux $address
