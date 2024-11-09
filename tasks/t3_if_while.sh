# -- Task:		Task 3
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

echo "Give me a number: "
read number

if [ $number -lt 0 ]; then
	echo "The '${number}' is less than 0."
elif [ $number -gt 0 ]; then
	echo "The '${number}' is greater than 0."
	for x in $(seq 1 $number); do
		echo $x
	done
else
	echo "The '${number}' is equal to 0."
fi
