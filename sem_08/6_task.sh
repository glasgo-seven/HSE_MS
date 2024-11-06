#!/bin/bash

: '
	Напишите скрипт, удаляющий все файлы в директории, которые были изменены более семи дней назад.
'
currentDate=$(date +"%M")

for file in $1/*\.* ; do
	modifyDay=$(date -r $file +"%M")
	echo $file
	if (( ($currentDate - $modifyDay) > 40)); then
		echo "$file is deleted"
		# rm $file
	fi
done
