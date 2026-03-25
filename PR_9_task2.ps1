# Set-ExecutionPolicy RemoteSigned

echo " ********************* Задание 2 *********************" 

$filePath = "array.txt"

#Проверка существует ли файл или нет 


$file_read = Get-Content $filePath | ForEach-Object { [int]$_ } #Читаем фаил и проверяем что там число
#находим макисмальное число находя значения и получая его для вывода
$max = $file_read | Measure-Object -Maximum | Select-Object -ExpandProperty Maximum



if ($null -eq $max) {
    echo "Ошибка! Файл пуст или не содержит чисел."
} else {
    echo "Максимальное число: $max"
}