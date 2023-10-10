#!/bin/bash
# Created to on 20231009 to make dummy files for testing the mass_rename script
mkdir test-dir 2>/dev/null
cd test-dir
cat ../list.txt |while read -r line
do echo -e  $line
touch "$line"
done
