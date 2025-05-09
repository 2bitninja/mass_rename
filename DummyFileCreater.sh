#!/bin/bash
# DummyFileCreater.sh
# Created on 20231009 to create dummy files for testing the mass_rename script.
# This script provides three functionalities:
# 1. Run normally to create dummy files based on the DummyList.txt file.
# 2. Append new filenames to DummyList.txt using the -a option.
# 3. Generate dummy files from an existing directory without modifying DummyList.txt using the -n option.

# Version and help information
VERSION="1.0"
HELP_TEXT="
Usage: DummyFileCreater.sh [options]

Options:
  -a filename     Append one or more filenames to DummyList.txt.
  -n directory    Generate dummy files using files from the specified directory.
                     (does not modify DummyList.txt).
  -v              Show the version of the script.
  -h              Show this help message.
"

# Check for options and arguments
while getopts ":a:n:vh" opt; do
  case ${opt} in
    a)
      # Append filenames provided by the user to DummyList.txt.
      # $OPTARG contains the argument value for the current option.
      # Multiple -a options can be used, each followed by a filename.
      echo "$OPTARG" >> DummyList.txt
      echo "Appended '$OPTARG' to DummyList.txt"
      ;;
    n)
      # Generate dummy files from the contents of the specified directory.
      # The filenames are held in an array for temporary use.
      # $OPTARG contains the directory path.
      if [[ -d "$OPTARG" ]]; then
        filenames=()
        while IFS= read -r file; do
          filenames+=("$file")
        done < <(ls "$OPTARG")

        # Create dummy files in the 'test-dir' directory based on the directory contents.
        mkdir -p test-dir
        for file in "${filenames[@]}"; do
          touch "test-dir/$file"
        done
        echo "Dummy files created from directory '$OPTARG' and placed in 'test-dir/'."
      else
        echo "Error: Directory '$OPTARG' not found."
        exit 1
      fi
      ;;
    v)
      # Display the version information.
      echo -e "\tDummyFileCreater.sh version $VERSION"
      exit 0
      ;;
    h)
      # Display the help information.
      echo "$HELP_TEXT"
      exit 0
      ;;
    \?)
      # Handle invalid options.
      echo "Invalid option: -$OPTARG" >&2
      echo "$HELP_TEXT"
      exit 1
      ;;
    :)
      # Handle missing option arguments.
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# If no options are provided, run the script normally, creating files from DummyList.txt.
if [[ $OPTIND -eq 1 ]]; then
  # Check if DummyList.txt exists, exit with error if not found.
  if [[ ! -f DummyList.txt ]]; then
    echo "Error: DummyList.txt not found."
    exit 1
  fi

  # Create 'test-dir' and generate dummy files based on DummyList.txt.
  mkdir -p test-dir
  while read -r line; do
    touch "test-dir/$line"
  done < DummyList.txt

  echo "Dummy files are ready to be used for mass_rename.sh and have been placed in the 'test-dir/' directory."
fi
