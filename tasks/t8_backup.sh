# -- Task:		Task 8
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

FILE_PATH=$1
BACKUP_DIR=".backup"
LOG_FILE="backup.log"
n_files=0

cd $FILE_PATH

mkdir "$BACKUP_DIR"
touch "$BACKUP_DIR/$LOG_FILE"

for file in *; do
	if [ -e "$file" ] && [ -f "$file" ]; then
		date=$(date '+%Y-%m-%d_%H=%M=%S')
		# echo "$date""_""$file"
		cp "$file" "$BACKUP_DIR""/""$date""_""$file"
		echo $!
		n_files=$(($n_files+1))
		echo "$date - $file" >> "$BACKUP_DIR/$LOG_FILE"
	fi
done

echo "$n_files files backed!" >> "$BACKUP_DIR/$LOG_FILE"


