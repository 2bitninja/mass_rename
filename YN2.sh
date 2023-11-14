#!/bin/bash

### VAR Section
bold=$(tput bold)
normal=$(tput sgr0)

### Functions


### Basic Script
clear
echo -e "\tThis script renames a group of files. Pleas use with care."
read -p "$bold Where are the files located?: $normal" "FL"
echo -e "\n$bold These are the files located at:$normal $(cd $FL;pwd)\n$(ls $FL)\n"
cd $FL
read -p "$bold Please input what you want to changed: $normal" remove

echo -e "\n\t$bold These are the files that will be changed $normal"
ls |grep "$remove"
read -p "$bold Please input what you want to add: $normal" add

ls | while read line
do mv "$line" "$(echo -e "$line" |sed -e "s/$remove/$add/" )" 2>/dev/null
done

echo -e "\n\t$bold The files have been renamed to:$normal"
ls |grep "$add"

### chice section
echo " "
read -p "Is this a good question (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo "ok then"
echo -e "$FL"
read -p "$bold Please input what you want to changed: $normal" remove

echo -e "\n\t$bold These are the files that will be changed $normal"
ls |grep "$remove"
read -p "$bold Please input what you want to add: $normal" add

ls | while read line
do mv "$line" "$(echo -e "$line" |sed -e "s/$remove/$add/" )" 2>/dev/null
done

echo -e "\n\t$bold The files have been renamed to:$normal"
ls |grep "$add"
    ;;
    * )
        exit 0
    ;;
esac