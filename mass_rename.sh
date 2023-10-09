#!/bin/bash
# This script is for doing mass renamaning of media files.
# Created on 20231001

### Basic Script
echo -e "This script renames a group of files"
read -p "Please input what you don't want: " remove
read -p "Please input what you want to add: " add
ls | while read line
do echo $line
# can use cp instead 
mv "$line" "$(echo -e "$line" |sed -e 's/$remove/$add/' )"
done

# can use path 
#mv "$line" "/Users/<username>/Dowloads/$(echo -e "$line" |sed -e 's/$remove/$add/' -e 's///' )"
