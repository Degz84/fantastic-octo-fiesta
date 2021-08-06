$StartTime = "05/08/2021 8:00:01 AM"
$EndTime = "06/08/2021 8:00:01 AM"
$Results = Get-WinEvent -FilterHashTable @{LogName="System"; ID=19; StartTime=$StartTime; EndTime=$EndTime;}
ForEach($Result in $Results){
$Result.TimeCreated,$Result.LogName,$Result.ProviderName,$Result.Id,$Result.LevelDisplayName}
$Results | Export-Csv -LiteralPath "C:\Temp\system.csv"
