#!/bin/bash

# Function to list files in the specified directory
list_files() {
    echo -e "\nListing files in the directory:"
    ls "$1"
}

# Function to prompt user for directory location
ask_directory() {
    read -p "Enter the directory location: " directory
    list_files "$directory"
    
    # Ask if the location is correct
    read -p "Is this the correct location? (Y/N): " choice
    case $choice in
        Y|y|yes) echo "Good!";;
        *) echo "Try again"; ask_directory;;
    esac
}

# Main section
echo "This script helps you with directory operations."
ask_directory
