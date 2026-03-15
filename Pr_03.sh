#!/bin/bash
echo "**************** Задание 1 ****************"

#переменные в которых находятся цвета
#цвет текста
RED_TEXT='\033[1;31m' 
BLUE_TEXT='\033[34m'  
GREEN_TEXT='\033[32m'
YELLOW_TEXT='\033[33m'

NC='\033[0m'  # No Color

random_numb=$RANDOM #Задаем рандомное число

if (($random_numb % 2 == 0)) #Проверяем это число на четность с помощью деления с остатком 
then
    echo -e "$RED_TEXT Число: $random_numb - является чётным.$NC"
else
    echo -e "$BLUE_TEXT Число: $random_numb - является нечётным.$NC"
fi    

echo "**************** Задание 2 ****************"

if  [ ! -e "/etc/passwd" ] && [ ! -e "/etc/group" ]; then #Проверка существует ли данный файл
    mkpasswd -l > /etc/passwd #Создание файлов
    mkgroup -l > /etc/group
    echo "Файлы отсутствовали, поэтому они были созданы заного." 
    echo "Последняя строка из файла /etc/passwd: "
    tail -n 1 /etc/passwd #
    echo
    echo "Последняя строка из файла /etc/group: "
    tail -n 1 /etc/group
else
    echo -e "$YELLOW_TEXT Файлы присутствуют в системе. $NC"
fi

echo "**************** Задание 3 ****************"

if [ ! -d "Folder1/" ]; then
    mkdir "Folder1/"
    echo "Папка отсутствовала, поэтому была создана."
    touch "Folder1/file"{0..9}".exe" # Создаем файлы внутри папки
    chmod a+x "Folder1/file"{0..9}".exe" # Даем доступ к папке и файлам всем пользователям на запуск файла
    echo "В папке были созданы 10 .exe файлов с правами"
else 
    echo "Папка существует."
    touch "Folder1/file"{0..9}".exe" # Создаем файлы внутри папки
    chmod a+x "Folder1/file"{0..9}".exe" # Даем доступ к папке и файлам всем пользователям на запуск файла
    echo "В папке были созданы 10 .exe файлов с правами"
fi

echo "**************** Задание 4 ****************"

#(find "Folder1/" -maxdepth 1 -type f | wc -l) -считает только файлы без каталогов find - ищет файлы и каталоги по заданным критериям.
file_count=$(ls -l "Folder1/" | wc -l) #Gодсчитывает количество строк в подробном списке содержимого папки
if [ "$file_count" -gt 7 ]; then
    if [ -x "Folder1/file0.exe" ]; then
        echo -e "$BLUE_TEXT Файл исполняемый и существует. $NC"
    else
        echo -e "$RED_TEXT ОТСУТСТВУЕТ! $NC"
    fi
else
    echo "В папке Folder1 файлов меньше 7."
fi