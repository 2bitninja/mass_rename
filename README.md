# Mass Rename

Mass Rename is a powerful BASH script designed to help you efficiently rename and organize groups of files. It's especially useful for managing media files, making them easier to import into media servers like Jellyfin, Plex, and Emby by following naming conventions that allow for easier metadata collection.

## Features
- Bulk Rename: Rename groups of files using custom patterns.
- Move Files: Easily move renamed files to specified directories.
- Media Server Compatibility: Simplifies media file organization for media servers.
- Testing Options: Supports testing to ensure accurate renaming before applying changes.

## Why Use Mass Rename?
- Efficient File Organization: Rename large sets of files such as photos (e.g., from `56894315.jpg` to `Vacation2024-01.jpg`) with ease.
- Metadata Automation: Following proper naming conventions makes it easier for media servers like Plex, Emby, and Jellyfin to automatically collect metadata, such as TV show and movie information, as well as movie posters.

## Additional Information
- To test the script or contribute to the project, refer to the [Testing Instructions](testing.md)
- A Python version of the script is also available. To switch to it, check out the [python branch.](https://github.com/2bitninja/mass_rename/tree/python_version)

## Installation
Follow these steps to install and prepare the script:

1. Clone the repository:
   ```bash
   git clone https://github.com/2bitninja/mass_rename.git
   ```
2. Navigate to the directory:
   ```bash
   cd mass_rename
   ```
3. Make the script executable
   ```bash
   chmod +x mass_rename.sh
   ```
## Usage Example
To perform a test run with the script:
### 1. Exacute the ```mass_rename.sh``` Script
Start the renaming process by running the following command:
```bash
./mass_rename.sh
```
### 2. Specify the Location of Files
The script will prompt you to input the path of the files you want to rename:
```bash
	This script renames a group of files. Please use with care.
Where are the files located?:
```
Type ```test-dir```, (or another directory), and the script will display the files in that directory, for example:
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
### 3. Remove or Modify Part of the Filename
At the prompt, type the part of the filenames you want to change. For example:
```bash
WordGirl - 1x
```
> [!TIP]
> You can also cut and paste the text directly from the file list.

```
 Please input what you want to changed: WordGirl - 1x
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
...
 Please input what you want to add: 
```
### 4. Add or Change Text in the Filename
Next, the script will ask for the new text to add. For instance, to rename with the season and episode format, type:
```BASH
S01E
```
The files will be renamed accordingly:
```
 Please input what you want to add: S01E
	 The files have been renamed to:
S01E01 - Tobey or Consequences High Fat Robbery.mp4
S01E02 - You Cant Crush City Hall Two Brain Highway.mp4
S01E03 - Coupon Madness When Life Gives You Potatoes.mp4
...
```
Notice that ```WordGirl - 1x``` has been replaced with ```S01E``` in the filenames. 
> [!TIP]
> If you leave the input blank, the script will simply remove the specified text (e.g., `WordGirl - 1x`) without replacing it, effectively deleting that part of the filename.

> [!NOTE]
> Currently, the script cannot handle special characters like ```[ ]```. This limitation will be addressed in a future update.

---
Feel free to provide feedback, suggest improvements, or report any issues!