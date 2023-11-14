# To Do List for the mass_rename scrip

## New features to add
* ```cp``` function (new branch)
	- so user can cp files with name changes instead of a rename
* ```mv``` function - Give option to move files after there renamed (new feature branch) issue #5
* Add feature letting user change a 2nd part of the file.
	- with yes / no choice
* Do file rename without going though the menu / wizard (new feature branch) issue #11
	- Example: mass_rename old_name new_name
	- Can still give a view of directory / files after
* Maybe make a BASH GUI version (new branch)
* Remove "**[**" "__]__" from file name. (new feature branch) issue #4
	- Auto remove or ask user
* Feature - sometimes each episode of a TV show is in a folder, when you want the episode in one folder
* Incorparate the DummyFiles script into the main script
	- this is to do dry runs
	- for running the script in a test mode
* Handle numbers better
	- Have file names increment, form 1-? 
	- Be able to add numbers, for example file lists a TV episode as S2E10, but it is episode S1E20 or 35.  
* Changelog / feature - tied to issues

## notes
To remove special [ ] 
```
sed -e 's/\[//' -e 's/\]//'
```

## GitHub section
* work on projects, with issues intergration
* Look at using the wiki
* Put a simular file to this one somewhere on the site.
* Create mlilstones until new release
* Add licence to repo
* Add ways to help or contribute to the project, on the README.md file.

## Python script
I found this Python script online that does the same thing, ref: https://medium.com/@hannanmentor/20-python-scripts-with-code-to-automate-your-work-68662a8dcbc1
```
# Python script to rename multiple files in a directory
import os
def rename_files(directory_path, old_name, new_name):
for filename in os.listdir(directory_path):
if old_name in filename:
new_filename = filename.replace(old_name, new_name)
os.rename(os.path.join(directory_path, filename), os.path.join(directory_path, new_filename))
```

