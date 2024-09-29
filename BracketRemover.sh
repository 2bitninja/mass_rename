#!/bin/bash
# This script removes brakets form filenames within the same directory.
# Created 20240929
echo -e "$1"
ls $1|while read line
do mv "$1/$line" "$(echo -e "$1/$line" |sed -e "s/\[//g" -e "s/\]//g" )"
done
