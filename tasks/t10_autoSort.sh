# -- Task:		Task 10
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

SRC_DIR="/mnt/c/Users/HYPERPC/Downloads" # <- Change me !
IMG_DIR="$SRC_DIR/Images"
DOC_DIR="$SRC_DIR/Documents"
LOG_FILE="$SRC_DIR/auto_sort.log"

mkdir $IMG_DIR 2> /dev/null
mkdir $DOC_DIR 2> /dev/null

echo -e "\n$(date '+%Y-%m-%d %H:%M:%S') - Let the Sorting now begin!" >> "$LOG_FILE"

for file in $SRC_DIR/*.{jpg,png,gif}; do
	# echo $file
	if [ -e "$file" ]; then
		mv "$file" "$IMG_DIR/"
		echo -e "$(date '+%Y-%m-%d %H:%M:%S') - /Images\t\t<- $file" >> "$LOG_FILE"
	fi
done

for file in $SRC_DIR/*.{txt,pdf,docx}; do
	# echo $file
	if [ -e "$file" ]; then
		mv "$file" "$DOC_DIR/"
		echo -e "$(date '+%Y-%m-%d %H:%M:%S') - /Documents\t<- $file" >> "$LOG_FILE"
	fi
done

echo -e "$(date '+%Y-%m-%d %H:%M:%S') - The Sorting is over" >> "$LOG_FILE"