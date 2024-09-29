#!/bin/bash
# This script is for doing mass renamaning of media files.
# Created on 20231001

### VAR Section
bold=$(tput bold)
normal=$(tput sgr0)

### Basic Script
clear
echo -e "\tThis script renames a group of files. Pleas use with care."
read -p "$bold Where are the files located?: $normal" "FL"
echo -e "\n$bold These are the files located at:$normal $(cd $FL;pwd)\n$(ls $FL)\n"
cd "$FL"
read -p "$bold Please input what you want to change: $normal" remove

echo -e "\n\t$bold These are the files that will be changed $normal"
ls |grep "$remove"
read -p "$bold Please input what you want to add: $normal" add

ls | while read line
do mv "$line" "$(echo -e "$line" |sed -e "s/$remove/$add/" )" 2>/dev/null
done

echo -e "\n\t$bold The files have been renamed to:$normal"
ls |grep "$add"
