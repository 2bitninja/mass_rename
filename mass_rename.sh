#!/bin/bash
# This script is for doing mass renamaning of media files.
# Created on 20231001

### Basic Script
ls | while read line
do echo $line
# can use cp instead 
mv "$line" "$(echo -e "$line" |sed -e 's///' -e 's///' )"
done

# can use path 
#mv "$line" "/Users/<username>/Dowloads/$(echo -e "$line" |sed -e 's///' -e 's///' )"
