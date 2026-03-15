#!/bin/bash
echo "**************** Задание 1 ****************"

#переменные в которых находятся цвета
#цвет текста
RED_TEXT='\033[31m' 
BLUE_TEXT='\033[34m'   
MAGENTA_TEXT='\033[35m'  
YELLOW_TEXT='\033[33m'
GRAY_TEXT='\033[37m' 
# Переменные с цветами фона
YELLOW_BG='\033[43m'  # Жёлтый фон
BLUE_BG='\033[46m'    # Голубой фон
PURPLE_BG='\033[47m'  # Розовый фон

NC='\033[0m'  # No Color


declare -a array_menu=( "${YELLOW_BG}${RED_TEXT}Информация об интерфейсах${NC}" 
                        "${BLUE_BG}${BLUE_TEXT}Настройка интерфейса${NC}" 
                        "${PURPLE_BG}${MAGENTA_TEXT}Пинговать${NC}" 
                        "Quit" )

# Выводим пункты меню с комбинированием фона и текста
echo -e "\t\tМеню скрипта:\n"
echo -e "${array_menu[0]}"  # Жёлтый фон + красный текст
echo -e "${array_menu[1]}"   # Голубой фон + синий текст
echo -e "${array_menu[2]}" # Розовый фон + фиолетовый текст
echo -e "${array_menu[3]}" 

echo "**************** Задание 2 ****************"

declare -A array_task02

array_task02[remove]="Я догадываюсь, что ты догадываешься, что я догадываюсь, что ты догадываешься, что я догадываюсь"
array_task02[slice]="Я знаю, что я знаю, что я знаю, что я знаю, что я знаю"
array_task02[symbol]="Мастер и Маргарита, Михаил Булгаков"

echo ${array_task02[remove]} # Cчитываем высказывание по ключу remove
echo -e "${RED_TEXT}${array_task02[remove]//что}${NC}" #Удаляем все вхождения слова 'что'

echo ${array_task02[slice]} # Cчитываем высказывание по ключу slice
echo -e "${YELLOW_TEXT}${array_task02[slice]:8:-11}${NC}" #Вырезаем первые 8 символов и последние 11 символов

echo ${array_task02[symbol]} # Cчитываем высказывание по ключу symbol
result_str=${array_task02[symbol]:18}  #Вырезаем первые 18 символов
echo -e "${GRAY_TEXT}${result_str^^}${NC}" #Выводим на экран пользователю в верхнем регистре в сером цвете.

echo "**************** Задание 3 ****************"

declare -a array_task03=("file"{0..9}".log")
echo "Полученный первый массив: ${array_task03[@]}"

unset array_task03[5] array_task03[6] array_task03[7] array_task03[8] array_task03[9]
echo "Полученный второй массив: ${array_task03[@]}"
result_str=${array_task03[@]^}
result_str=${result_str[@]//.log/.gz}
echo "Полученный третий массив: ${result_str[@]}"
