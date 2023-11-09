import os
def rename_files(directory_path, old_name, new_name):

for filename in os.listdir(directory_path):
if old_name in filename:
new_filename = filename.replace(old_name, new_name)
os.rename(os.path.join(directory_path, filename), os.path.join(directory_path, new_filename))
