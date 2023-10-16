#!/bin/bash
# This script is for doing mass renamaning of media files.
# Created on 20231001

### VAR Section
bold=$(tput bold)
normal=$(tput sgr0)

### Basic Script
clear
echo -e "\tThis script renames a group of files. Pleas use with care."
read -p "$bold Where are the files located?: $normal" FL
#echo -e "\n$bold Are these the files you want to rename?$normal\n$(pwd)\n$(ls $FL)\n"
echo -e "\n$bold These are the files located at:$normal $(cd $FL;pwd)\n$(ls $FL)\n"
cd $FL
read -p "$bold Please input what you want to changed: $normal" remove

ls |grep "$remove"
read -p "$bold Please input what you want to add: $normal" add

ls | while read line
do mv "$line" "$(echo -e "$line" |sed -e "s/$remove/$add/" )" 2>/dev/null
done
#clear
echo -e "\n\t$bold The files have been renamed to:$normal"
ls 

### notes
# To remove special [ ] 
# sed -e 's/\[//' -e 's/\]//'
