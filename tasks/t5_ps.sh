# -- Task:		Task 5
# -- Author:	dsantipov@edu.hse.ru

#!/bin/bash
set -m

COLOR_YELLOW="\e[33m"
COLOR_RESET="\e[0m"

echo -e "${COLOR_YELLOW}Запускаем 3 sleep-а${COLOR_RESET}"
sleep 100s &
id_1=$!
sleep 200s &
id_2=$!
sleep 300s &
id_3=$!
echo -e "${COLOR_YELLOW}Получили 3 джобы с id:${COLOR_RESET} ${id_1} ${id_2} ${id_3}"

echo -e "${COLOR_YELLOW}Выводим список джоб в фоне${COLOR_RESET}"
jobs -l

echo -e "${COLOR_YELLOW}Вытаскиваем первую созданную джобу с фона${COLOR_RESET} (нажать CTRL+Z чтобы остановить и вернуться в скрипт)"
fg %1

jobs -l

echo -e "${COLOR_YELLOW}отправляем эту джобу обратно в фон${COLOR_RESET}"
bg %1

echo -e "${COLOR_YELLOW}Состояние джоб в фоне к концу скрипта${COLOR_RESET}"
jobs -l
