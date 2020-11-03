$frequency = 0

foreach($line in Get-Content C:\Frequency.txt) { $frequency += [int]$line }

Write-Output "The answer is: " $frequency