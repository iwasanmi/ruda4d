#!/bin/sh
chmod 777 scanners.sh

show_menu(){
    
     figlet "RUDA4D" | lolcat
    printf "Please enter the apptopriate number for your choice of scan" | lolcat
    printf "\n*********************************************\n" | lolcat
    printf "** 1 => Pingsweep \n" | lolcat
    printf "** 2 => Script Engiene and Vulnerability Scan \n" | lolcat
    printf "** 3 => Nikto Scan \n" | lolcat
    printf "** 4 => Simple Nmap Scan \n" | lolcat
    printf "** 5 => Enum4linux \n" | lolcat
    printf "** x => Quit \n" | lolcat
    printf "********************************************* \n" | lolcat
    
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` 
    normal=`echo "\033[00;00m"` 
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            cd tools
            option_picked "WELCOME TO PINGSWEEP" | lolcat;
            figlet PINGSWEEP | lolcat
            bash pingsweep.sh;
            show_menu;
        ;;
        2) clear;
            cd tools
            option_picked "WELCOME TO NMAP VULNERABILITY SCANNER" | lolcat;
            figlet NMAP SCRIPT ENGIENE AND VULNERABILITY SCAN | lolcat
            bash nmapScriptScan.sh
            show_menu;
        ;;
        3) clear;
            cd tools
            option_picked "WELCOME TO NIKTO" | lolcat ;
            figlet NIKTO | lolcat
            bash niktoscan.sh
            show_menu;
        ;;
        4) clear;
            cd tools
            option_picked "WELCOME TO NMAP" | lolcat;
            figlet NMAP SCAN | lolcat
            bash nmapScan.sh
            show_menu;
        ;;
        5) clear;
            cd tools
            option_picked "WELCOME TO ELUM4LINUX" | lolcat;
            figlet ENUM4LINUX | lolcat
            bash enum4linux.sh
            show_menu;
         ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option from the menu";
            show_menu;
        ;;
      esac
    fi
done
