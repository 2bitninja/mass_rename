#!/bin/bash
# Created to on 20231009 to make dummy files for testing the mass_rename script

rm -r test-dir 2>/dev/null
mkdir test-dir 2>/dev/null
cat DummyList.txt | while read -r line
  do touch "test-dir/$line"
 done
echo -e "Test files are now in place"
