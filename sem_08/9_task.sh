#!/bin/bash

: '
	Напишите скрипт, который запускает указанную пользователем команду в фоне и выводит её PID.
'

eval $1 &
echo $1 PID: $!
wait $!
