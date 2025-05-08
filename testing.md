# Testing `mass_rename`
This guide explains how to test the `mass_rename.sh` script, which efficiently renames groups of files. It utilizes dummy files to allow for safe testing of the renaming process.
## What is Included
- **mass_rename.sh**: Used to rename groups of files based on your input. This is the main script that automates the renaming process.
- **DummyFileCreater.sh**: A script to create a `test-dir` directory containing empty dummy files for safely testing the renaming process.
- **DummyList.txt**: A list of filenames used by `DummyFileCreater.sh` to populate the `test-dir` directory.
## Prerequisites
To run the script, you will need:

- The BASH shell installed.
- `sed` installed for text processing.

## Testing Steps
### 1. Create Dummy Files
To test the renaming process safely, you’ll need some sample files. The `DummyFileCreater.sh` script will create a directory called `test-dir`, and generate dummy files within it.

Run the following command to create the dummy files:
```bash
./DummyFileCreater.sh
```
> [!NOTE]
> If you encounter a permissions error, the script might not be executable. You can bypass this by running:
```bash
bash ./DummyFileCreater.sh
```
### 2. Execute the `mass_rename.sh` Script
Once the dummy files are created, run the `mass_rename.sh` script to begin the renaming process:
``` bash
./mass_rename.sh
```

### 3. Specify the Location of Files
The script will prompt you for the directory containing the files. Since you created `test-dir` in Step 1, enter that directory name:

```bash
Where are the files located?: test-dir
```
The script will then display the list of files found in `test-dir`, for example:
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
The script will now check for filenames in the selected directory for the presence of brackets `[]` or parentheses `()`. If any such files are present, their names be shown, and you'll be asked if you want to remove these characters. This check is skipped if no matching filenames are found.
For example:
```bash
The following files contain brackets or parentheses:
[fan] name of file (date).720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv

Do you want to remove the brackets and parentheses? (yes/no):
```
> [!WARNING]
>  If you select yes, all instances of brackets [] will be removed in this step. These brackets can be added back in the immediately following step if desired.
- Type `yes` or `y` to automatically remove the brackets or parentheses.
- Type `no` or `n` to keep them unchanged.

### 5. Remove or Modify Part of the Filename
You are now prompted to specify the portion of the filenames you wish to change. For example, to replace `WordGirl - 1x`, input this:
```bash
WordGirl - 1x
```
> [!TIP] 
> You can also cut and paste the text directly from the file list above.

### 6. Add or Change Text in the Filename
After specifying the text to change, the screen will refreash, displaying the files that will be affected. 
```BASH
 Please input what you want to changed: WordGirl - 1x
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
...
 Please input what you want to add: 
```
The prompt asks for the text you want to add. For example, to change the series' numbering format, type:
```BASH
S01E
```
> [!NOTE]
> If you leave the input blank, the specified text (e.g., `WordGirl - 1x`) will be removed without replacement.
### 7. Confirmation
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
You will then be asked to confirm these changes:
```bash
Do you accept these changes? (yes/no):
```
- Type `yes` or `y` to apply the changes. 
- Type `no` or `n` to reject the changes. Return to step 5

### 8. Apply More Changes or Exit?
This prompt asks if you need to make any further changes to the files in the current directory.
```bash
 Do you want to change anything else in this directory? (yes/no):
```


- Type `yes` or `y` return to Step 4 for additional changes. 
- Type `no` or `n` to exit the program.

### Additional Considerations
- Running ```DummyFileCreater.sh``` again will reset the `test-dir` directory, allowing you to create fresh dummy files for further testing.
- To customize your test cases, simply edit the `DummyList.txt` file and add more filenames. The next time you run `DummyFileCreater.sh`, the additional filenames will be created in the `test-dir` directory.


---
Feel free to provide feedback, suggest improvements, or report any issues!
