#!/bin/bash

### VAR section
bold=$(tput bold)
normal=$(tput sgr0)
### Functions
SHOW(){
clear
echo -e "\tThis script renames a group of files. Please use with care."
}

show_menu(){
	echo -e "1) Rename a file"
	echo -e "2) Move a file"
	echo -e "3) Remove special character "
	echo -e "4) to be determined"
	echo -e "5) to be determined"
	echo -e "Q) Exit"
}
read_option(){
	local choice
	read -p "Enter choice: " choice
        case $choice in 
	       1) ReName ;;
	       2) MoveF ;;
	      # 3)  ;;
	      # 4)  ;;
	      # 5)  ;; 
	       q|Q|[Ee]xit) exit 0 ;;
	       *) echo -e "Error " && sleep 2
	esac
}

pause(){
    echo ""
  read -p "Press [Enter] key to continue..."
}

get_directory_location() {
    clear
    echo -e "\tThis script renames a group of files. Please use with care."
    read -p "$bold Where are the files located?: $normal" "FL"
}
# Sections
ReName(){
   read -p "$bold Where are the files located?: $normal" "FL" 
   echo -e "\n$bold These are the files located at:$normal $(cd $FL;pwd)\n\n$(ls $FL)\n"
   local "YN"
   read -p "Does this the contain the files you want to rename? (Y|N): " "YN"
   case $YN in
      Y|y|yes) rename;;
      N|n|no) ReName ;;
      *) echo -e "error" ;;
   esac
}
rename() {
    #clear
    #get_directory_location
    cd $FL
    read -p "$bold Please input what you want to change: $normal" remove
    echo -e "\n\t$bold These are the files that will be changed $normal"
    ls | grep "$remove"
   read -p "Is this what you want? (Y|N): " "YN"    
   case $YN in
      Y|y|yes) perform_rename;;
      N|n|no) exit ;;
      *) echo -e "error" ;;
   esac
}
perform_rename() {
    read -p "$bold Please input what you want to add: $normal" add
    ls | while read line
    do
        mv "$line" "$(echo -e "$line" | sed -e "s/$remove/$add/")" 2>/dev/null
    done
    echo -e "\n\t$bold The files have been renamed to:$normal /n"
    ls | grep "$add"
    cd - &>/dev/null
    pause
}

### Main Section

while true
do
        SHOW
	show_menu
        read_option
done