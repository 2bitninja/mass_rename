# Mass Rename

Mass Rename is a powerful BASH script designed to help you efficiently rename and organize groups of files. The script offers a dry-run feature to preview changes before applying them and supports custom directory input for added flexibility. It's especially useful for managing media files, making them easier to import into media servers like Jellyfin, Plex, and Emby by following naming conventions that allow for easier metadata collection.

## Features
- **Bulk Rename:** Rename groups of files using custom patterns, allowing users to specify text to remove and replace in filenames during the renaming process.
- **Remove Brackets:** Automatically detects filenames with brackets (`[` and `]`) and prompts the user for removal.
- **Media Server Compatibility:** Helps format filenames to conform to typical media server conventions, like season and episode identifiers, simplifying media file organization for media servers.
- **Testing Options:** Supports testing to ensure accurate renaming before applying changes.
- **User-Friendly Prompts:** Guides users step-by-step through the renaming process.
- **Error Handling:** Validates directory input and ensures the specified directory exists before proceeding.

## Why Use Mass Rename?
- Efficient File Organization: Rename large sets of files such as photos (e.g., from `56894315.jpg` to `Vacation2024-01.jpg`) with ease.
- Metadata Automation: Following proper naming conventions makes it easier for media servers like Plex, Emby, and Jellyfin to automatically collect metadata, such as TV show and movie information, as well as movie posters.

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
### 1. Execute the ```mass_rename.sh``` Script
Start the renaming process by running the following command:
```bash
./mass_rename.sh
```
### 2. Specify the Location of Files
The script will prompt you to input the path of the files you want to rename:
```bash
	Welcome to the Mass Rename Tool. 
This script provides a convenient way to rename a group of media files in your chosen directory.

Remember to use it carefully and have backups of your files
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
```
### 3. Check for Brackets in Filenames
After specifying the file location, the script will automatically check if  any filenames contain brackets (`[` or `]`). If brackets are detected, you will see the following prompt:
```bash
Brackets detected in filenames. Do you want to remove them? (yes/no):
```
If you choose yes, the script will remove all brackets. For example:
```bash
Original filenames:
[fan] name of file (date).720p.mhsie.mkv
[lovesubs].anime_name.E01S01.[1080p].epname.stuff.mkv

Renamed filenames:
fan name of file (date).720p.mhsie.mkv
lovesubs.anime_name.E01S01.1080p.epname.stuff.mkv
```
If you choose no, the filenames will remain unchanged, and the script will proceed to the next step.

### 4. Remove or Modify Part of the Filename
You will then get this prompt
```
 Please input what you want to change: 
```
At the prompt, type the part of the filenames you want to change. For example:
```bash
WordGirl - 1x
```
> [!TIP]
> You can also cut and paste the text directly from the file list.

You will then be presented with a list of files that will be affected
```
         These are the files that will be changed: 
WordGirl - 1x01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl - 1x02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl - 1x03 - Coupon Madness When Life Gives You Potatoes.mp4
...
```
### 5. Add or Change Text in the Filename
Next, the script will ask for the new text to add. 
```bash
 Please input what you want to add: 
```
For instance, to rename with the season and episode format, type:
```BASH
WordGirl S01E
```
> [!TIP]
> If you leave the input blank, the script will simply remove the specified text (`WordGirl - 1x`) without replacing it, effectively deleting that part of the filename.

### 6. Confirmation
Once you enter the new text to add, the script will display the proposed changes without applying them. The output might look like this:
```
 Proposed changes for renaming:
WordGirl S01E01 - Tobey or Consequences High Fat Robbery.mp4
WordGirl S01E02 - You Cant Crush City Hall Two Brain Highway.mp4
WordGirl S01E03 - Coupon Madness When Life Gives You Potatoes.mp4
...
```
>[!TIP]
> Notice that ```WordGirl - 1x``` has been replaced with ```WordGirl S01E``` in the filenames. 

You will then be prompted with:
```bash
Do you accept these changes and proceed with renaming? (yes/no):
```
If changes are accepted then the files will be renamed. If the changes are not accepted, you will be asked again what you want to change.

### 7. More Changes
The next prompt is asking if there are more changes needed to the files in the current directory. If so the script loops back for further modifications. If not then the program exits.
```bash
 Do you want to change anything else in this directory? (yes/no):
```

## Feedback and Contributions
We welcome your feedback to improve **Mass Rename**! If you encounter issues, have suggestions, or would like to contribute, please:
- Open an issue in the [GitHub repository](https://github.com/2bitninja/mass_rename/issues).
- Submit a pull request to suggest improvements or new features.
- Share your use cases to help us better understand how the script is being used.

Thank you for helping make **Mass Rename** better!
