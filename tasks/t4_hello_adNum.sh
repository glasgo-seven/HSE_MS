# -- Task:		Task 4
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

function hello {
	echo 'Hello,' $1
}

hello 'user_name'

function add_nums {
	echo $(($1 + $2))
}

add_nums 10 5
