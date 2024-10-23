#!/bin/bash

: '
	Скрипт должен изменить имена всех файлов в директории на строчные буквы.
'

for file in $1/*.* ; do
	new_name=$(echo $file | tr '[:upper:]' '[:lower:]')
	mv "$file" "$new_name"
done
