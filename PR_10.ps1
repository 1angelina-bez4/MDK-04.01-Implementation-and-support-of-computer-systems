function Get-DigitSum {
    $number = $args[0]
    $number_one= [int]($number/1000)%10
    $number_two = [int]($number/100)%10
    $number_three= [int]($number/10)%10
    $number_four = $number%10

    $summa = $number_one + $number_two + $number_three + $number_four
    return $summa
} 

function Get-Circle_Area_Volume ($radius)
{
    $pi = [Math]::PI

    $length_Circle = 2*$pi*$radius
    $area_Circle = $pi * $radius * $radius
    $volume_Circle = (4 / 3) * $pi * [Math]::Pow($radius,3)

    #для правильного возращения нескольких значений создаем массив
    $array_result=$length_Circle,$area_Circle,$volume_Circle

    return $array_result
}

function Get-Radius_Circumscribed_Circle
{
     $radius = [Math]::Sqrt($square / 2.0)

     return $radius
}

echo "********************* Задание 1 *********************"
echo "Вариант 11"
echo "Дано целое четырехзначное число. Найти сумму его цифр."

#Вводим число 
$input1 = Read-Host "Введите четырехзначное число "

#Задаем что вод  будет являться числом
$number = [int]$input1 
#проверка является ли  число  четырехзначном, если нет то выдаем ошибку
if($number -lt 1000 -or $number -gt 9999)
{
    Write-Host "Ошибка!Число не является четырехзначным."
}
else
{
    #Передаем в функцию число и заносим результат в переменую результат 
    $result1 = Get-DigitSum $number
    Write-Host "Сумма цифр числа $number = $result1"
}


echo "********************* Задание 2 *********************"
echo "Определить длину окружности, площадь круга и объем шара для заданного радиуса."

#Вводим радиус 
$input2 = Read-Host "Введите радиус "

$radius = [int]$input2

$result2 =  Get-Circle_Area_Volume $radius
Write-Host "Длина окружности равна: $($result2[0])"
Write-Host "Площадь круга равна: $($result2[1])"
Write-Host "Объем шара равна: $($result2[2])"

echo "********************* Задание 3 *********************"
echo "Задана площадь квадрата. Определить радиус описанной окружности."
#Вводим площадь квадрата 
$input3 = Read-Host "Введите площадь квадрата "

$square = [double]$input3

$result3 =  Get-Radius_Circumscribed_Circle $square
Write-Host "Радиус описанной окружности равен: $result3"