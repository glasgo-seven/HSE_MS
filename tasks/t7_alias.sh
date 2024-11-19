# -- Task:		Task 7
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash

alias ll='ls -la'

user_name='sanakin'
echo 'alias ll="ls -la"' >> /home/$user_name/.bashrc
source /home/$user_name/.bashrc

cd $(compgen -A directory hw_)