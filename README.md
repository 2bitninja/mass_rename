# Mass Rename

Mass Rename is a powerful BASH script designed to help you efficiently rename and organize groups of files. It's especially useful for managing media files, making them easier to import into media servers like Jellyfin, Plex, and Emby by following naming conventions that allow for easier metadata collection.

## Features
- **Bulk Rename**: Rename groups of files using custom patterns.
- **Bracket Removal**: Automatically detect and remove brackets from filenames if present.
- **Dry Run Functionality**: Preview proposed changes before applying them. Users can accept or reject the changes.
- **Media Server Compatibility**: Simplifies media file organization for media servers.
- **User-Friendly Prompts**: Interactive prompts guide users through the renaming process.
- **Error Handling**: Validates directory input and ensures the specified directory exists before proceeding.

## Why Use Mass Rename?
- **Efficient File Organization**: Rename large sets of files such as photos (e.g., from `56894315.jpg` to `Vacation2024-01.jpg`) with ease.
- **Metadata Automation**: Following proper naming conventions makes it easier for media servers like Plex, Emby, and Jellyfin to automatically collect metadata, such as TV show and movie information, as well as movie posters.

## Additional Information
- To test the script or contribute to the project, refer to the [Testing Instructions](testing.md)
- A Python version of the script is also available. To switch to it, check out the [python branch.](https://github.com/2bitninja/mass_rename/tree/python_version)
- For alternative methods to rename and organize files, see the [Alternatives](alternatives.md) page.

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
```
### 3. Check for Brackets in Filenames
After specifying the file location, the script will check for any brackets in the filenames. If brackets are detected, the script will ask if you want to remove them:
```bash
Brackets detected in filenames. Do you want to remove them? (yes/no):
```
If you choose to remove the brackets, the script will proceed accordingly. If not, it will skip this step.

### 4. Remove or Modify Part of the Filename
At the prompt, type the part of the filenames you want to change. For example:
```bash
Please input what you want to change: WordGirl - 1x
```
> [!TIP]
> You can also cut and paste the text directly from the file list.

```
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
...
 Please input what you want to add: 
```
### 5. Add or Change Text in the Filename

After specifying the text you want to change, the script will prompt you to input the new text that you want to add. For instance, if you want to replace `WordGirl - 1x` with `WordGirl S01E`, you would enter:
```bash
WordGirl S01E
```
> [!TIP]
> If you leave the input blank, the script will simply remove the specified text (e.g., `WordGirl - 1x`) without replacing it, effectively deleting that part of the filename.
### 6. Dry Run Confirmation
Once you enter the new text to add, the script will display the proposed changes without applying them. The output might look like this:
```bash
Proposed changes for renaming:
S01E01 - Tobey or Consequences High Fat Robbery.mp4
S01E02 - You Cant Crush City Hall Two Brain Highway.mp4
S01E03 - Coupon Madness When Life Gives You Potatoes.mp4
...
No changes have been made.
```
You will then be prompted with:
```bash
Do you accept these changes? (yes/no):
```
- Type `yes` or `y` to apply the changes.
- Type `no` or `n` to reject the changes and return to the input section to modify your choices.

### Important Notes
- Always ensure you have backups of your files before using the script, especially when performing batch operations.
- The script is designed to operate in a user-friendly manner, but caution is advised during the renaming process.

---
Feel free to provide feedback, suggest improvements, or report any issues!