# ���������� ��� �������� � ������� ����������
$sourceDir = "C:\Users\TUF 2022-01\SourceDirectory"
$targetDir = "C:\Users\TUF 2022-01\TargetDirectory"

# �������� �������� ���������� � ���������� ������
New-Item -ItemType Directory -Path $sourceDir -Force
New-Item -ItemType Directory -Path $targetDir -Force

# �������� ���������� ������ .txt � �������� ����������
Set-Content -Path "$sourceDir\File1.txt" -Value "This is file 1"
Set-Content -Path "$sourceDir\File2.txt" -Value "This is file 2"
Set-Content -Path "$sourceDir\File3.txt" -Value "This is file 3"

# ����������� ���� ������ .txt �� �������� ���������� � �������
Copy-Item -Path "$sourceDir\*.txt" -Destination $targetDir

# ����� ������ ������������� ������
$copiedFiles = Get-ChildItem -Path $targetDir -Filter "*.txt"
$copiedFiles | ForEach-Object { $_.FullName }
