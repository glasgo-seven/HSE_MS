# -- Task:		Task 6
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

cat test/input.txt | wc -l >> test/output.txt

ls nofile.xyz &> test/error.log