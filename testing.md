# Testing `mass_rename`
This guide explains how to test the `mass_rename.sh` script for renaming groups of files efficiently.

## What is Included
- `mass_rename.sh`: The main script used to rename groups of files based on your input.
- `DummyFileCreater.sh`: A helper script that creates a directory of dummy files for testing purposes.
- `DummyList.txt`: List of filenames that will be put in the `test-dir` directory.
## Prerequisites
To run the script, you will need:

- The BASH shell installed.
- SED installed for text processing.

## Testing Steps
### 1. Create Dummy Files
To test the renaming process, you’ll need some sample files. The`DummyFileCreater.sh` script will create a diretory called `test-dir`, and generate dummy files.

Run the following command to create the dummy files:
```bash
./DummyFileCreater.sh
```
> [!NOTE]
> If you encounter a permissions error, the script may not be executable. You can bypass this by running:
```bash
bash ./DummyFileCreater.sh
```
### 2. Exacute the `mass_rename.sh` Script
Once the dummy files are created, run the `mass_rename.sh` script to begin the renaming process:
``` bash
./mass_rename.sh
```

### 3. Specify the Location of Files
The script will prompt you to specify the directory where your files are located. Since you created `test-dir` in Step 1, input that directory name:

```bash
Where are the files located?:
```
Type `test-dir` and the script will display the list of files in that directory, for example:
```bash
  These are the files located : test-dir
[fan] name of file (date).720p.mhsie.mkv
[fan] name of file (date)E01S01.720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv
...
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
...
```
### 4. Bracket Detection and Removal
After selecting the directory, the script checks for any filenames that contain brackets `[]` or parentheses `()`. It will display any filenames with these special characters and ask whether you would like to remove them. For example:
```bash
The following files contain brackets or parentheses:
[fan] name of file (date).720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv

Do you want to remove the brackets and parentheses? (yes/no):
```
- Type `yes` to automatically remove the brackets or parentheses.
- Type `no` to keep them unchanged.

> [!WARNING]
> The script cannot remove brackets `[]` in the next step, but can add them back in the step after that. If you choose not to remove them now, they can be removed in the next iteration.

### 5. Remove or Modify Part of the Filename
At the next prompt, you’ll be asked which part of the filenames you want to change. For example, if you want to replace `WordGirl - 1x`, input that:
```bash
WordGirl - 1x
```
> [!TIP] 
> You can also cut and paste the text directly from the file list for accuracy.above.

### 6. Add or Change Text in the Filename
After specifying the part of the filenames to change, the script will ask you to input the text you want to add. For example, to change the series' numbering format, type:
```BASH
S01E
```
> [!NOTE]
> If you leave the input blank, the script will simply remove the specified text (e.g., `WordGirl - 1x`) without replacing it, effectively deleting that part of the filename.
### 7. Dry Run and confirmation
The script will now display the proposed changes for your review:
```
Proposed changes for renaming:
WordGirl S01E01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl S01E02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl S01E03 - Coupon Madness When Life Gives You Potatoes.mp4
WordGirl S01E04 - Jerky Jerk Becky's Birthday.mp4
...
No changes have been made.
```
You will then be asked if you accept these changes:
```bash
Do you accept these changes? (yes/no):
```
- Type `yes` to apply the changes.
- Type `no` to reject the changes and return to the input section to modify your choices.




### Additional Considerations
- Running ```DummyFileCreater.sh``` again will reset the test directory, allowing you to create fresh dummy files for further testing.
- To customize your test cases, simply edit the `DummyList.txt` ffile and add more filenames. The next time you run `DummyFileCreater.sh`, the additional filenames will be created in the`test-dir` directory.


---
Feel free to provide feedback, suggest improvements, or report any issues!