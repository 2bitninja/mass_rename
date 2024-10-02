# To Do List for the mass_rename script

## Core Script Features
- [ ] `cp` **function**: Allow users to copy files with name changes instead of renaming them (new branch) [issue #5](https://github.com/2bitninja/mass_rename/issues/5)

* [ ] `mv` **function**: Provide the option to move files after they are renamed (new branch)

* [X] **Loop script**: Allow the user to fix additional parts of the filenames without restarting the script. Prompt the user with a yes/no choice to decide whether to loop through the script again for further changes.

- [X] **Confirmation step**: Add a confirmation step before applying changes
	- [X]  Example: `Is this how you want the file to look? [Y|N]`
- [ ] **Direct rename**: Bypass the menu/wizard to rename files directly via command line (new branch) [issus #11](https://github.com/2bitninja/mass_rename/issues/11)
	- [ ]  Example: `mass_rename old_name new_name`
	- [ ]  Optionally display directory/file view afterward

- [X] **Bracket handling**: Automatically or manually remove `[` and `]` from filenames (new branch) [issue #4](https://github.com/2bitninja/mass_rename/issues/4)

- [ ] **Organize episodes in folders**: Automatically move TV show episodes into one folder from separate folders
	- [ ] Option to auto-create directories for organization

- [ ] **Incorporate DummyFileCreator**: Merge the functionality of `DummyFileCreator.sh` into `mass_rename.sh` to create a single script that handles both file renaming and dummy file generation for testing.

- [ ] **Number handling**: Improve number handling in filenames
	- [ ]  Ensure files are incremented properly (e.g., 1, 2, 3, etc.) 
	- [ ]  Allow changes when episode numbers don’t match, e.g., rename `S2E10` to `S1E20`


- [ ] Changelog / feature - tied to issues
- [ ]  Make Powershell version

## Optional Features
- **BASH GUI version**: Create a BASH GUI version of the script for easier interaction

- **User-generated dummy files**: Enable users to add their own dummy files through DummyList.txt or a separate script

- **PowerShell version**: Create a PowerShell version of the script for Windows users

## Notes & Code Snippets
### Special Character Removal
To remove special characters like [ and ] from filenames, use:
```
sed -e 's/\[//' -e 's/\]//'
```

## Python Version
I found a Python script that does the same thing. Reference: [20 Python Scripts to Automate Your Work](https://medium.com/@hannanmentor/20-python-scripts-with-code-to-automate-your-work-68662a8dcbc1)
```python
# Python script to rename multiple files in a directory
import os
def rename_files(directory_path, old_name, new_name):
for filename in os.listdir(directory_path):
if old_name in filename:
new_filename = filename.replace(old_name, new_name)
os.rename(os.path.join(directory_path, filename), os.path.join(directory_path, new_filename))
```

## GitHub section
- [ ]  work on projects, with issues intergration
- [ ]  Look at using the wiki
- [ ]  Put a simular file to this one somewhere on the site.
- [ ]  Create mlilstones until new release
- [X]  Add licence to repo
- [ ]  Add ways to help or contribute to the project, on the README.md file.