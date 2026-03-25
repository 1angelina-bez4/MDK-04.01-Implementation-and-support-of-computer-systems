# Set-ExecutionPolicy RemoteSigned

echo " ********************* Задание 1 *********************" 

do {  
    $input_arr = Read-Host -Prompt 'Введите количество элементов в массиве'
    #конвентируем строку в переменую строго определенного типа для сравнение и получения что введено было число а не строка
    $input_arr = [int]$input_arr
}while ($input_arr -le 0) 

#Создаем Пустой массив через оператор создания массива;
#$array = @()  

#Создаем массив и заполняем его через цикл for
$array = 1..$input_arr  | ForEach-Object {Get-Random -Maximum 100 -Minimum -100}


$min = $array[0] #Создаем переменную min которая пока хранит первый эелемент массива
for($i =1; $i -lt $input_arr; $i++)
{
    if($array[$i] -lt $min)
    {
        $min =$array[$i]
    }
}

echo "Содержимое массива:"
foreach ($number in $array) {
    #Если число равно минимальному то вы
    if ($number -eq $min) {
        # выделяем минимальное  число желтым
        Write-Host $number -ForegroundColor Yellow 
    } else {
        Write-Host $number #иначе выводим просто число без выделением цвета
    }
    Write-Host " "
}
Write-Host "" # переход на новую строку после вывода всех элементов

echo "Минимальное число: $min"

echo " ********************* Задание 1 *********************" 