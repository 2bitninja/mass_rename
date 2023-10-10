# mass_rename
This BASH script is for mass renaming and moving of files. 

### Why this maybe useful
Need to rename media files for use in an application such as; PLEX, Jellyfin, etc..
Want torename picuture from trip so you can group them together

Basic code
```
ls | while read line
do echo $line
mv "$line" "$(echo -e "$line" |sed -e 's///' -e 's///' )"
done
```
This will subsittute the oldname for the new name. 


### Script is for making the dummy files for testing the mass_rename script (DummyFileCreater.sh)
```
cat list.txt |while read line
do echo $line
touch "$line"
done
```