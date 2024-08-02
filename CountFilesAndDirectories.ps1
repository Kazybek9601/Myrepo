$items = Get-ChildItem -Path "."

$fileCount = 0
$directoryCount = 0

foreach ($item in $items) {
    if ($item -is [System.IO.DirectoryInfo]) {
        $directoryCount++
    }
    elseif ($item -is [System.IO.FileInfo]) {
        $fileCount++
    }
}

Write-Output "Number of directories: $directoryCount"
Write-Output "Number of files: $fileCount"
