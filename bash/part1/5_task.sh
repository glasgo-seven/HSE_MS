#!/bin/bash

: '
	Напишите скрипт, который добавляет префикс backup_ ко всем файлам в указанной директории.
'

for file in $1/*.* ; do
	mv "$file" "${file//////backup_}"
	# echo $file
done