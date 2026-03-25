echo " ********************* Задание 3 *********************" 

$filePath = "access.log"


# Читаем файл
$file_read = Get-Content $filePath

# Используем Where-Object для фильтрации и подсчёта
$Count_HEAD = ($file_read | Where-Object { $_ -match '"HEAD ' }).Count
$Count_DELETE = ($file_read | Where-Object { $_ -match '"DELETE ' }).Count
$Count_POST = ($file_read | Where-Object { $_ -match '"POST ' }).Count
$Count_GET = ($file_read | Where-Object { $_ -match '"GET ' }).Count

# Вывод результатов
Write-Host "Количество запросов 'HEAD':   $Count_HEAD" -ForegroundColor Yellow
Write-Host "Количество запросов 'DELETE': $Count_DELETE" -ForegroundColor Red
Write-Host "Количество запросов 'POST':   $Count_POST" -ForegroundColor Green
Write-Host "Количество запросов 'GET':    $Count_GET" -ForegroundColor Blue