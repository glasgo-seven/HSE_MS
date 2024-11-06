#!/bin/bash

: '
	Напишите скрипт, который проверяет использование диска и выводит предупреждение, если оно превышает 80%.
'

usage_percent=$(df -kh . | tail -n1 | awk '{print $5}')
usage=${usage_percent:0:2}

if ((usage > 80)); then
	echo "Диск занят на более чем 80% [${usage_percent}]"
fi

