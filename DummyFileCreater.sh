#!/bin/bash
# Created to on 20231009 to make dummy files for testing the mass_rename script
cat list.txt |while read line
do echo $line
touch "$line"
done