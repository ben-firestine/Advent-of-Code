####################################################################################################
#Advent of Code - 2019
#Day 6 - Part 1
#Ben Firestine
#Wayne State University
#
#NOTES: 
####################################################################################################
[Array]$Array = Get-Content -Path 'F:\Personal Files\Advent of Code\2019\Day 6\D6-Test.txt'
[Array]$Unique = @()
$Orbits = 0


for ($position = 0; $position -lt $Array.Length; $position++) {

    [Array]$SplitA = $Array[$position].Split(')')

    if ($Unique -notcontains $SplitA[0]) {
        $Unique += $SplitA[0]
        $Orbits = $Orbits + $Unique.Length
    }
    elseif($Unique -notcontains $SplitA[1]) {
        $Unique +=$SplitA[1]
        $Orbits = $Orbits + $Unique.Length
    }
}

Write-Host("Total Orbits: " + $Orbits)