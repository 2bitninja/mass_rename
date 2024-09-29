# Testing mass_rename
This guide explains how to test the mass_rename.sh script for renaming groups of files efficiently.

## What is Included
- **mass_rename.sh**: Used to rename groups of files based on your input. This is the main script that automates the renaming process.
- **DummyFileCreater.sh**: Used to create a directory of empty files for testing the script. It generates dummy files to help you safely test the renaming process.
- **DummyList.txt**: List of filenames that will be put in the test-dir directory.
## Prerequisites
To run the script, you will need:

- The BASH shell installed.
- SED installed for text processing.

## Testing Steps
### 1. Create Dummy Files
The ```DummyFileCreater.sh``` script will create a diretory called ```test-dir```, and generate dummy files for testing.

To create the dummy files, run:

```bash
./DummyFileCreater.sh
```
> [!NOTE]
> If you encounter a permissions error, the script may not be executable. To work around this without changing permissions, use:
```bash
bash ./DummyFileCreater.sh
```
### 2. Exacute the ```mass_rename.sh``` Script
To start renaming files, run the ```mass_rename.sh``` script:
``` bash
./mass_rename.sh
```

### 3. Specify the Location of Files
The script will prompt you to input the location of the files:

```bash
	This script renames a group of files. Please use with care.
Where are the files located?:
```
Type ```test-dir```, the directory you created in step 1. The script will display the files in that directory, for example:
```bash
  These are the files located : test-dir
[fan] name of file (date).720p.mhsie.mkv
[fan] name of file (date)E01S01.720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv
...
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
...

 Please input what you want to change: 

```
### 4. Removal or Change
At the this prompt, input the part of the filenames you want to remove or change. For example, type:
```bash
WordGirl - 1x
```
> [!TIP] 
> You can also cut and paste the text directly from the file list above.
```
 Please input what you want to changed: WordGirl - 1x
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
...
 Please input what you want to add: 
```
### 5. Add or Change Text in the Filename
After removing/changing the part of the filenames, you will be prompted to input the new text to add. For example, type:
```BASH
S01E
```
The script will rename the files accordingly:
```
 Please input what you want to add: S01E
	 The files have been renamed to:
S01E01 - Tobey or Consequences High Fat Robbery.mp4
S01E02 - You Cant Crush City Hall Two Brain Highway.mp4
S01E03 - Coupon Madness When Life Gives You Potatoes.mp4
...
```
Notice how ```WordGirl - 1x``` has been replaced with ```S01E``` in the filenames. 
> [!TIP]
> If you leave the input blank, the script will simply remove the specified text (e.g., `WordGirl - 1x`) without replacing it, effectively deleting that part of the filename.

> [!NOTE]
> Currently, the script cannot handle special characters like ```[ ]```. This limitation will be addressed in a future update.


### Additional Considerations
- Running ```DummyFileCreater.sh``` again will reset the files by recreating the original set of dummy files.
- You can customize the test by adding more filenames to ```DummyList.txt``` file additional filenames will be included in the ```test-dir``` directory the next time the dummy file creator script is executed.


---
Feel free to provide feedback, suggest improvements, or report any issues!



