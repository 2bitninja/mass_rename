#!/bin/bash
# This script is for mass renaming of media files and optionally removing brackets from filenames.
# Created on 20231001

### VAR Section
bold=$(tput bold)
normal=$(tput sgr0)

### Basic Script
clear
echo -e "\tWelcome to the Mass Rename Tool. 
This script provides a convenient way to rename a group of media files in your chosen directory.\n
Remember to use it carefully and have backups of your files"

# Function to perform a dry run showing proposed changes
dry_run() {
    echo -e "$bold Proposed changes for renaming:$normal"
    local changes_made=false
    ls "$FL" | while read -r line; do
        new_name=$(echo -e "$line" | sed -e "s/$remove/$add/")
        if [[ "$line" != "$new_name" ]]; then
            echo "$new_name"  # Display only the new filename
            changes_made=true
        fi
    done
    if $changes_made; then
        echo -e "$bold Applying changes...$normal"
        ls "$FL" | while read -r line; do
            new_name=$(echo -e "$line" | sed -e "s/$remove/$add/")
            if [[ "$line" != "$new_name" ]]; then
                mv "$FL/$line" "$FL/$new_name" 2>/dev/null
            fi
        done
        echo -e "\n$bold Changes have been applied.$normal"
        echo -e "\n$bold Updated file list:$normal\n$(ls "$FL")\n"
    fi
    if ! $changes_made; then
        echo "No changes will be made."
    fi
    
    while true; do
        read -p "$bold Do you accept these changes? (yes/no): $normal" confirm
        confirm=$(echo "$confirm" | tr '[:upper:]' '[:lower:]')

        if [[ "$confirm" == "yes" || "$confirm" == "y" ]]; then
            return 0  # Accept changes
        elif [[ "$confirm" == "no" || "$confirm" == "n" ]]; then
            echo -e "$bold Changes not accepted. Going back to input section...$normal"
            return 1  # Reject changes
        else
            echo "Please enter 'yes' or 'no'."
        fi
    done
}

# Function to perform the renaming process
rename_files() {
    # Display the files in the specified location
    echo -e "\n$bold These are the files located at: $FL$normal\n$(ls "$FL")\n"

    # Check if there are any files with brackets
    if ls "$FL" | grep -qE '\[|\]'; then
        # Ask the user if they wish to remove brackets
        read -p "$bold Brackets detected in filenames. Do you want to remove them? (yes/no): $normal" remove_brackets
        remove_brackets=$(echo "$remove_brackets" | tr '[:upper:]' '[:lower:]')  # Convert to lowercase for easy comparison

        if [[ "$remove_brackets" == "yes" || "$remove_brackets" == "y" ]]; then
            echo -e "\n$bold Removing brackets from filenames...$normal"
            ls "$FL" | while read -r line; do
                mv "$FL/$line" "$FL/$(echo -e "$line" | sed -e 's/\[//g' -e 's/\]//g')" 2>/dev/null
            done
            echo -e "\n$bold Brackets have been removed from the filenames.$normal"
            echo -e "\n$bold Updated file list:$normal\n$(ls "$FL")\n"
        else
            echo -e "\n$bold Skipping bracket removal.$normal"
        fi
    else
        echo -e "\n$bold No filenames with brackets detected.$normal"
    fi

    # Continue with mass renaming process
    while true; do
        read -p "$bold Please input what you want to change: $normal" remove
        echo -e "\n\t$bold These are the files that will be changed: $normal"
        ls "$FL" | grep "$remove"

        read -p "$bold Please input what you want to add: $normal" add

        # Perform a dry run to show proposed changes
        if ! dry_run; then
            continue  # If changes are not accepted, loop back to ask for changes
        fi

        # Proceed with renaming
        ls "$FL" | while read -r line; do
            new_name=$(echo -e "$line" | sed -e "s/$remove/$add/")
            if [[ "$line" != "$new_name" ]]; then
                mv "$FL/$line" "$FL/$new_name" 2>/dev/null
            fi
        done

        # Display the final list of renamed files
        echo -e "\n\t$bold The files have been renamed to:$normal"
        ls "$FL" | grep "$add"
        break  # Exit the renaming loop if the renaming is completed
    done
}

# Function to get a valid directory from the user
get_valid_directory() {
    while true; do
        read -p "$bold Where are the files located?: $normal" FL
        if [[ -d "$FL" ]]; then
            echo -e "$bold Directory found: $FL$normal"
            break
        else
            echo -e "$bold Error: Directory '$FL' does not exist. Please try again.$normal"
        fi
    done
}

# Main loop to allow repeated changes if desired
while true; do
    # Prompt for file location only if $FL is not set or invalid
    if [[ -z "$FL" ]]; then
        get_valid_directory
    fi

    # Call the renaming function
    rename_files

    # Ask the user if they want to make further changes
    read -p "$bold Do you want to change anything else in this directory? (yes/no): $normal" more_changes
    more_changes=$(echo "$more_changes" | tr '[:upper:]' '[:lower:]')  # Convert to lowercase for easy comparison

    if [[ "$more_changes" == "no" || "$more_changes" == "n" ]]; then
        echo -e "\n$bold Exiting the script. Goodbye!$normal"
        exit 0
    else
        clear
        echo -e "\n$bold Restarting process for directory: $FL$normal"
    fi
done
