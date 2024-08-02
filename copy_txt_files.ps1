# Переменные для исходной и целевой директорий
$sourceDir = "C:\Users\TUF 2022-01\SourceDirectory"
$targetDir = "C:\Users\TUF 2022-01\TargetDirectory"

# Создание исходной директории и добавление файлов
New-Item -ItemType Directory -Path $sourceDir -Force
New-Item -ItemType Directory -Path $targetDir -Force

# Создание нескольких файлов .txt в исходной директории
Set-Content -Path "$sourceDir\File1.txt" -Value "This is file 1"
Set-Content -Path "$sourceDir\File2.txt" -Value "This is file 2"
Set-Content -Path "$sourceDir\File3.txt" -Value "This is file 3"

# Копирование всех файлов .txt из исходной директории в целевую
Copy-Item -Path "$sourceDir\*.txt" -Destination $targetDir

# Вывод списка скопированных файлов
$copiedFiles = Get-ChildItem -Path $targetDir -Filter "*.txt"
$copiedFiles | ForEach-Object { $_.FullName }
