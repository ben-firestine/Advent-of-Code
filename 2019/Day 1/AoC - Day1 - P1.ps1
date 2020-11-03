####################################################################################################
#Advent of Code - 2019
#Day 1 - Part 1
#Ben Firestine
#Wayne State University
####################################################################################################
[Array]$Array = Get-Content -Path 'F:\Personal Files\Advent of Code\2019\Day 1\G-D1-PuzzleInput.txt'

$Sum = 0
foreach ($element in $Array) { $sum = $sum + (([Math]::Floor($element/3)) - 2) }

write-host("Total sum: ")
$Sum