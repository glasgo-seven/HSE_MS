# -- Task:		Task 2
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

echo $PATH
PATH=$PATH:$1

user_name="sanakin"
echo 'export PATH="${PATH}:'$1'"' >> /home/$user_name/.bashrc
source /home/$user_name/.bashrc
