# mass_rename
This BASH script is for renaming groups of files. 

### Why you might find this script useful
* Rename groups of pictures to something more useful then 56894315.jpg. 
* Make media files easier to import into media servers, such as; Plex, Emby, and Jellyfin.

## Instructions 
Please download file via the Code button. 

### Testing Script
Run the DummyFileCreater.sh script in order to create dummy files.
```
bash ./DummyFileCreater.sh
```
The script will create the diretory test-dir.

Run the main command
```
bash ./mass_rename.sh
```

```
	This script renames a group of files. Pleas use with care.
Where are the files located?:
```
Type in ```test-dir```
```
  These are the files located : test-dir
[fan] name of file (date).720p.mhsie.mkv
[fan] name of file (date)E01S01.720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv
[lovesubs].anime_name.E01S01.(2000)name0fep.okther.mkv
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
WordGirl - 1x04 - Jerky Jerk Becky's Birthday.mp4
WordGirl - 1x05 - Chuck Down With Word Up.mp4
WordGirl - 1x06 - Book Ends Mr. Big.mp4
WordGirl - 1x07 - Super Grounded Mouse Army.mp4
WordGirl - 1x08 - Tobey's Masterpiece Chuck the Nice Pencil Selling Guy.mp4
WordGirl - 1x09 - The Birthday Girl Granny Sitter.mp4
WordGirl - 1x10 - Mr. Big's Big Plan Vocab Bee.mp4
WordGirl - 1x11 - Shrinkin in the Ray Department Store Tobey.mp4
WordGirl - 1x12 - Chuck E Sneeze Swap Meat.mp4
WordGirl - 1x13 - Granny's Good Time All Cure Spritzer Mecha Mouse.mp4

 Please input what you want to changed: 

```
Type in ```WordGirl - 1x```. Cut & past works too.
```
 Please input what you want to changed: WordGirl - 1x
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
WordGirl - 1x04 - Jerky Jerk Becky's Birthday.mp4
WordGirl - 1x05 - Chuck Down With Word Up.mp4
WordGirl - 1x06 - Book Ends Mr. Big.mp4
WordGirl - 1x07 - Super Grounded Mouse Army.mp4
WordGirl - 1x08 - Tobey's Masterpiece Chuck the Nice Pencil Selling Guy.mp4
WordGirl - 1x09 - The Birthday Girl Granny Sitter.mp4
WordGirl - 1x10 - Mr. Big's Big Plan Vocab Bee.mp4
WordGirl - 1x11 - Shrinkin in the Ray Department Store Tobey.mp4
WordGirl - 1x12 - Chuck E Sneeze Swap Meat.mp4
WordGirl - 1x13 - Granny's Good Time All Cure Spritzer Mecha Mouse.mp4
 Please input what you want to add: 
```
Type in ```S01E```
```
 Please input what you want to add: S01E
	 The files have been renamed to:
'[fan] name of file (date).720p.mhsie.mkv'
'[fan] name of file (date)E01S01.720p.mhsie.mkv'
'[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv'
'[lovesubs].anime_name.E01S01.(2000)name0fep.okther.mkv'
'S01E01 - Tobey or Consequences High Fat Robbery.mp4'
'S01E02 - You Cant Crush City Hall Two Brain Highway.mp4'
'S01E03 - Coupon Madness When Life Gives You Potatoes.mp4'
"S01E04 - Jerky Jerk Becky's Birthday.mp4"
'S01E05 - Chuck Down With Word Up.mp4'
'S01E06 - Book Ends Mr. Big.mp4'
'S01E07 - Super Grounded Mouse Army.mp4'
"S01E08 - Tobey's Masterpiece Chuck the Nice Pencil Selling Guy.mp4"
'S01E09 - The Birthday Girl Granny Sitter.mp4'
"S01E10 - Mr. Big's Big Plan Vocab Bee.mp4"
'S01E11 - Shrinkin in the Ray Department Store Tobey.mp4'
'S01E12 - Chuck E Sneeze Swap Meat.mp4'
"S01E13 - Granny's Good Time All Cure Spritzer Mecha Mouse.mp4"
```
Notice The the change, ```WordGirl - 1x``` was changed to ```S01E```. As of now the script can't hamdle "[ ]". I will fix this in a future update.

## Files used
### mass_rename.sh
Main script
```
ls | while read line
do echo $line
mv "$line" "$(echo -e "$line" |sed -e 's///' -e 's///' )"
done
```
This will subsittute the oldname for the new name. 

### DummyFileCreater.sh 
Script is for making the dummy files for testing the mass_rename script (DummyFileCreater.sh)
```
cat DummyList.txt |while read line
do touch "$line"
done
```

__DummyList.txt__ - Just a list of dummy file names.
__Notes.txt__ - just Notes not used in project.
