#!/bin/bash

: '
	Напишите скрипт, который отслеживает изменение указанного файла и уведомляет об этом.
'

start_content=$(cat $1)

while true; do
	sleep 1
	curr_content=$(cat $1)
	if [ "$start_content" != "$curr_content" ]; then
		echo "File $1 has been changed!"
		start_content="$curr_content"
	fi
done