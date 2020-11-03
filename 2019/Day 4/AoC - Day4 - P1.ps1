####################################################################################################
#Advent of Code - 2019
#Day 4 - Part 1
#Ben Firestine
#Wayne State University
#
#NOTES: 
#
#MIN: 273025
#MAX: 767253
###################################################################################################
[string]$rangeS = 273025..767253
[array]$rangeA = $rangeS.Split(" ")
$counter = 0

#Loops through all the numbers
for($position = 0; $position -lt $rangeA.Length; $position++) {
    $adjacent = $false
    $decrease = $false

    #Breaks up each number set into an array for calculations
    $rangeC = $rangeA[$position].ToCharArray()

    #Checks to see if there are two adjacent numbers that are the same. We want this to be true
    for ($posA = 0; $posA -lt $rangeC.Length; $posA++) {
        if($rangeC[$posA] -eq $rangeC[$posA+1]) { $adjacent = $true }
    }

    #Checks to see if there are no numbers that decrease. We want this to be false
    if ($adjacent -eq $true) {
        for($posD = 0;$posD -lt $rangeC.Length-1; $posD++) {
            if($rangeC[$posD] -gt $rangeC[$posD+1]) { $decrease = $true }
        }
    }

    #Increases the counter by one if there are adjacent numbers and no number decreases
    if (($adjacent -eq $true) -and ($decrease -eq $false)) { $counter++ }

    #Output for testing
    Write-Host("range A value")
    $rangeA[$position]
    Write-Host("adjacent?")
    $adjacent
    Write-Host("decrease?")
    $decrease
}

#Final Result
Write-Host("counter")
$counter