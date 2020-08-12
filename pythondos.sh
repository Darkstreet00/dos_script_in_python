#!/bin/bash

printf "Script by \e[90mDark\e[91mStreet \e[0m\n"
printf "\n"

while true; do
    read -p "Type HU for hungarian or Type EN for english.(x to exit) " huenx
    case $huenx in
        [huHU]* ) 
echo Áldozat ip:

read ip

echo port:

read port

echo csomag:

read package

break;;
        [enEN]* ) 

echo victim ip:

read ip

echo port:

read port

echo package:

read package

break;;
        [x]* ) exit;;
        * ) echo "Type HU or EN(x to exit)";;
    esac
done

python py/dos.py $ip $port $package
