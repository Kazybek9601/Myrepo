param(
    [Parameter(Mandatory=$true)]
    [string]$filePath
)

if (-Not (Test-Path $filePath)) {
    Write-Error "File does not exist."
    exit
}

try {
    $content = Get-Content -Path $filePath -ErrorAction Stop
    $words = $content -join " " -split '\s+' | Where-Object { $_ }
    $count = $words.Count
    Write-Output "Number of words in the file: $count"
} catch {
    Write-Error "Error reading file: $_"
}
