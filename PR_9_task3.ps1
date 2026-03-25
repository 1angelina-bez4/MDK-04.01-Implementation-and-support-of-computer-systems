# Set-ExecutionPolicy RemoteSigned

echo " ********************* Задание 3 *********************" 

$filePath = "access.log"

# Читаем файл
$file_read = Get-Content $filePath

# Используем Where-Object для фильтрации и подсчёта
$Count_HEAD = ($file_read | Where-Object { $_  -eq '"HEAD ' }).Count
$Count_DELETE = ($file_read | Where-Object {$_  -eq'"DELETE ' }).Count
$Count_POST = ($file_read | Where-Object { $_  -eq '"POST ' }).Count
$Count_GET = ($file_read | Where-Object { $_ -eq'"GET ' }).Count


echo "Количество слов 'HEAD': $Count_HEAD"
echo "Количество слов 'DELETE': $Count_DELETE"
echo "Количество слов 'POST': $Count_POST"
echo "Количество слов 'GET': $Count_GET"


