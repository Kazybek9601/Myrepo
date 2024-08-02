
$UpdatesToDownload = New-Object -ComObject Microsoft.Update.UpdateColl
foreach ($Update in $SearchResult.Updates) {
    if (!$Update.IsDownloaded) { # Добавляем только не загруженные обновления
        $UpdatesToDownload.Add($Update) | Out-Null
    }
}


if ($UpdatesToDownload.Count -gt 0) {
    $Downloader = $UpdateSession.CreateUpdateDownloader()
    $Downloader.Updates = $UpdatesToDownload
    Write-Output "Загрузка обновлений..."
    $DownloadResult = $Downloader.Download()
} else {
    Write-Output "Все доступные обновления уже загружены или нет доступных обновлений для загрузки."
}
