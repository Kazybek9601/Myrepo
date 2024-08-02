New-Item -ItemType Directory -Name 'MyDirectory'; Set-Location -Path 'MyDirectory'; New-Item -ItemType File -Name 'MyFile.txt'; Set-Location -Path ..; Get-ChildItem
