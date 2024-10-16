#!/bin/bash

ping -c 2 $1 > /dev/null

if [ $? -eq 0 ]; then
	echo "Доступен"
else
	echo "Не доступен / Ошибка"
fi
