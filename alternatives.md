# Alternatives to Mass Rename
While `mass_rename.sh` is a powerful tool for renaming and organizing files, there are alternative methods and tools that might better suit your workflow, depending on your platform and preferences.
## 1. Finder (macOS)
The Finder app on macOS includes a built-in feature that allows you to rename multiple files at once. This is a handy option for users who prefer a graphical interface over a command-line tool.
- **How to use it:** <br />
Select multiple files in Finder, right-click, and choose "Rename." You can rename files by adding text, replacing text, or numbering the files sequentially.
- **Video tutorial:**<br />
[Batch Rename Multiple Files On a Mac](https://www.youtube.com/watch?v=kWkB8ZvMHBE)

## 2. Bulk Rename Utility (Windows)
The Bulk Rename Utility is a free, highly configurable tool for batch renaming files on Windows. It offers a wide range of options, making it suitable for advanced file management.
- **How to use it:** <br />
Bulk Rename Utility provides functionality like removing, adding, or replacing text, appending numbers, and more. It's useful for organizing media files or large sets of documents.
- **Website:**<br />
[Bulk Rename Utility](https://www.bulkrenameutility.co.uk/)

## 3. Advanced Renamer (Windows)
Advanced Renamer is another excellent Windows tool for renaming files in bulk. It's similar to Bulk Rename Utility but offers additional flexibility for users who require more advanced renaming methods.
- **How to use it:** <br />
You can rename files based on various methods, such as regular expressions, custom scripts, and file metadata.
- **Website:**<br />
[Advanced Renamer](https://www.advancedrenamer.com/)

## 4. Linux rename Command
Many Linux distributions have a native `rename` command, which is a powerful alternative for users who prefer the command-line environment and are comfortable with shell scripting. However, not all distributions come with the `rename` utility installed by default.
- **How to use it:** <br />
The `rename` command can rename multiple files by substituting patterns in the filenames. For example, the following command replaces "old-text" with "new-text" in all `.jpg` files:
```bash
rename 's/old-text/new-text/' *.jpg
```
- ***Installation:***<br />
If the `rename` command is not available, you can install it on most distributions:
    - On Debian-based systems (e.g., Ubuntu):
    ```bash
    sudo apt install rename
    ```
    - On Red Hat-based systems (e.g., Fedora):
    ```bash
    sudo dnf install prename
    ```
- ***Documentation:***<br />
Once installed, you can learn more about its usage by reading the manual pages:

```bash
man rename
```
