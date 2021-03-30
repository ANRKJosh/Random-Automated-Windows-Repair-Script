mkdir C:\Xuper
$LogFile = "C:\Xuper\RepairScript.txt"
$Date = Get-Date

"Repair Log" | Out-File $LogFile -Force -Append
$Date | Out-File $LogFile -Force -Append
"" | Out-File $LogFile -Force -Append

"Running SFC" | Out-File $LogFile -Force -Append
sfc /scannow | Out-File $LogFile -Force -Append

"" | Out-File $LogFile -Force -Append

"Running CHKDSK /scan" | Out-File $LogFile -Force -Append
chkdsk /scan | Out-File $LogFile -Force -Append

"" | Out-File $LogFile -Force -Append

"Running DISM" | Out-File $LogFile -Force -Append
dism /online /cleanup-image /restorehealth | Out-File $LogFile -Force -Append
