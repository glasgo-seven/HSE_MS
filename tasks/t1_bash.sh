# -- Task:		Task 1
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

TAB="\t"

COLOR_RED="\e[31m"
COLOR_YELLOW="\e[33m"
COLOR_BLUE="\e[36m"
COLOR_GRAY="\e[90m"

COLOR_RESET="\e[0m"

pwd=`pwd`

echo -e "${COLOR_YELLOW}Path${COLOR_RESET}: ${pwd}"

is_file_found=false

for file in *; do
	if [ -d $file ]; then
		permissions=`stat -c '%A' a.txt`
		echo -e "  ${COLOR_GRAY}${permissions}${COLOR_RESET}  ${COLOR_YELLOW}dir${COLOR_RESET}${TAB}${file}/"
	fi
done

for file in *; do
	if [ -f $file ]; then
		echo -e "  ${COLOR_GRAY}${permissions}${COLOR_RESET}  ${COLOR_BLUE}file${COLOR_RESET}${TAB}${file}"
	fi

	if [ $1 ] && [ $file = $1 ]; then
		is_file_found=true
	fi
done

if [ $1 ]; then
	if [ $is_file_found = true ]; then
		echo -e "${COLOR_YELLOW}File '${COLOR_RESET}${1}${COLOR_YELLOW}' found!${COLOR_RESET}"
	else
		echo -e "${COLOR_RED}File '${COLOR_RESET}${1}${COLOR_RED}' not found.${COLOR_RESET}"
	fi
fi
