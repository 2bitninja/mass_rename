#!/bin/bash

# Function to get directory location from the user
get_directory_location() {
    clear
    echo -e "\tThis script renames a group of files. Please use with care."
    read -p "$bold Where are the files located?: $normal" "FL"
}

# Function for mass renaming of files
mass_rename() {
    #clear
    #get_directory_location
    echo -e "\n$bold These are the files located at:$normal $(cd $FL && pwd)\n$(ls $FL)\n"
    cd $FL
    read -p "$bold Please input what you want to change: $normal" remove

    echo -e "\n\t$bold These are the files that will be changed $normal"
    ls | grep "$remove"

    # Confirmation step after listing files
    confirm_rename
}

# Function for confirmation step
confirm_rename() {
    read -p "$bold Do you want to proceed with the renaming? (Y/N): $normal" confirm
    case $confirm in
        Y|y|yes)
            perform_rename
            ;;
        N|n|no)
            echo -e "$bold Renaming canceled. Rerunning the renaming function.$normal"
            $(cd - ) 
            get_directory_location
            ;;
        *)
            echo -e "$bold Invalid choice. Going back to the previous step.$normal"
            ;;
    esac
}

# Function to perform mass renaming
perform_rename() {
    read -p "$bold Please input what you want to add: $normal" add
    ls | while read line
    do
        mv "$line" "$(echo -e "$line" | sed -e "s/$remove/$add/")" 2>/dev/null
    done
    echo -e "\n\t$bold The files have been renamed to:$normal"
    ls | grep "$add"
}

# Main section
echo "This script helps you with directory operations."

# Ask for directory location
get_directory_location

# Perform mass renaming
mass_rename
