####################################################################################################
#Advent of Code - 2019
#Day 1 - Part 2
#Ben Firestine
#Wayne State University
####################################################################################################
[Array]$Array = Get-Content -Path 'F:\Personal Files\Advent of Code\2019\Day 1\D1-PuzzleInput.txt'

$Sum = 0
foreach ($element in $Array) { 
    $fuel = (([Math]::Floor($element/3)) - 2)
    $sum = $sum + $fuel

    $negative = 1

    #Determines the total fuel cost for each element in the array
    while($negative -eq 1) {
        $fuelW = (([Math]::Floor($fuel/3)) - 2)

        if ((([Math]::Floor($fuelW/3)) - 2) -gt 0) {
            $sum = $sum + $fuelW
            $fuel = $fuelW
        }
        else {
            $sum = $sum + $fuelW
            $negative = 0
        }
    }
}

write-host("Total sum: ")
$Sum