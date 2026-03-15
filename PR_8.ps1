$ui=(Get-Host).UI.RawUI
$ui.WindowTitle = 'Вариант 5'

echo " ********************* Задание 1 *********************"  | Write-Host -ForegroundColor White
echo "Скорость первого автомобиля V1 км/ч, второго - V2 км/ч, расстояние между ними S км." | Write-Host -ForegroundColor Yellow
echo "Определить расстояние между ними через T часов, если автомобили движутся навстречу." | Write-Host -ForegroundColor Cyan

$car1 = 60
$car2 = 40

$S = 200

$time = 2

$distance = $S - ($car1 + $car2) * $time

#Находим дистанцию = Находя скорость сближения складывая скорость
#складывая скорость двух автомобилей и умножаем на время для
#нахождения пройденнего пути, затем из всего расстояния  вычитаем пройденную
#путь и получаем растояние между ними

#на случай, если они уже встретились
if ($distance -lt 0) {
    $result= "Автомобили уже встретились (расстояние 0 км)"
} else {
    $result = "Расстояние между автомобилями через $time ч = $distance км"
}

echo "Скорость 1-го авто: $car1 км/ч" |  Write-Host -ForegroundColor Green
echo "Скорость 2-го авто: $car2 км/ч" |  Write-Host -ForegroundColor Green
echo "Начальное расстояние: $S км" |  Write-Host -ForegroundColor Green
echo "Время: $time ч" |  Write-Host -ForegroundColor Green
echo "Расстояние между автомобилями через $time часов: $distance км" |  Write-Host -ForegroundColor Green

echo " ********************* Задание 2 *********************" |  Write-Host -ForegroundColor white
echo "Найти периметр и площадь прямоугольного треугольника, если даны длины его катетов a и b."  |  Write-Host -ForegroundColor white

$a = 3
$b = 4

#Площадь
$S_area = ($a*$b)/2

#Периметр для  нахожденего его нужно найти 3 сторону 

$c = [System.Math]::Sqrt([System.Math]::Pow($a,2) + [System.Math]::Pow($b,2))

$P= $a + $b + $c 

echo "Площадь треугольника равна: $S_area" |  Write-Host -ForegroundColor Red
echo "Периметр треугольника равен: $P"|  Write-Host -ForegroundColor Red

echo " ********************* Задание 3 *********************" |  Write-Host -ForegroundColor white
echo "Дано количество секунд с начала суток. Вычислить текущее время в часах, минутах и секундах."  |  Write-Host -ForegroundColor white

$time_second = 3600 

#Находим часы
#Нахожим оставшиеся  секунды для определения минут и секунд

$hours = [System.Math]::Floor($time_second / 3600) 
$remainingSec = $time_second % 3600                
$minutes = [System.Math]::Floor($remainingSec / 60)
$seconds = $remainingSec % 60

echo "Прошло $totalSeconds секунд. Текущее время:  $hours, $minutes, $seconds" |  Write-Host -ForegroundColor Magenta