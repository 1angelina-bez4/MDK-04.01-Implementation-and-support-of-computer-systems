#!/bin/bash
awk '$9 == "404" {
    date = substr($4, 2)

    space_pos = index(date, " ")
    clean_date = substr(date, 1, space_pos - 1)

    print $1, clean_date, $7, $9, $10
}' access.log > out1.txt

#результат заносим в файл out1
#FS=" "; OFS=" " разделитель полей на вводе и выводе пробел
#$1 ... $9 поля первое поле IP последнее поле HTTP)
#substr  заменяет только ПЕРВОЕ вхождение#!/bin/bash
#index- находит позицию первого вхождения подстроки в строке.

#awk '$9 == "404" {
    #date = substr($4, 2)

    #split(date, datetime, " ")
    #clean_date = datetime[1]

    #print $1, clean_date, $7, $9, $10
#}' access.log > out1.txt

awk '$9 == 200 && index($7, ".jpg") > 0 {
    bytes[$1] += $10
} 
END {
    # Заголовок таблицы
    printf "%-15s | %s\n", "IP адрес", "Общий размер (байт)"
    printf "%-15s-+-%s\n", "---------------", "-------------------" 
    
    # Сортируем IP и выводим
    n = asorti(bytes, sorted)
    for (i = 1; i <= n; i++) {
        ip = sorted[i]
        printf "%-15s | %d\n", ip, bytes[ip]
    }
}' access.log > out2.txt

#%-15s IP-адрес, выровненный влево (15 символов)
#%d Тип данных - decimal (целое число)
#$7 ~ /\.jpg/ поиск через регулярное выражение оператор ~
# printf "%-15s-+-%s\n", "---------------", "-------------------"  - для ввывода красивой таблицы 
#

#awk '$9 == 200 && $7 ~ /\.jpg/ {
#    bytes[$1] += $10
#} 
#END {
    # Заголовок таблицы
#    printf "%-15s | %s\n", "IP адрес", "Общий размер (байт)"
#    printf "%-15s-+-%s\n", "---------------", "-------------------" 
    
    # перебирает ip
#    for (ip in jpg_sum) {
#       printf "%-15s %-20d\n", ip, jpg_sum[ip]
#    }
#}' access.log > out2.txt