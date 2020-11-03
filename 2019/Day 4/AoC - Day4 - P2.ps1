####################################################################################################
#Advent of Code - 2019
#Day 4 - Part 2
#Ben Firestine
#Wayne State University
#
#NOTES: I am not very happy with the way that I figured out the added rule for Part 2. The rule states that only two numbers that are adjacent counts. So 224444 is correct
#But 222333 is not correct. After a ton of research and trials, I ended up going to sloppy way but just creating counters for every number. I was really hoping to find a better solution
#that was less code but I dont want to spend more time on this problem
#
#MIN: 273025
#MAX: 767253
###################################################################################################
[string]$rangeS = 273025..767253
[array]$rangeA = $rangeS.Split(" ")
[array]$rangeD = @()
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
    if (($adjacent -eq $true) -and ($decrease -eq $false)) { 
        $rangeD += $rangeA[$position]
    }

    #Output for testing purposes
    Write-Host("range A value")
    $rangeA[$position]
    Write-Host("adjacent?")
    $adjacent
    Write-Host("decrease?")
    $decrease
}

Write-Host("numbers to double check")
$rangeD

#Checks remaining numbers for the new rule
for ($position = 0; $position -lt $rangeD.Length; $position++) {
    #Declares counters
    $counter1 = 0
    $counter2 = 0
    $counter3 = 0
    $counter4 = 0
    $counter5 = 0
    $counter6 = 0
    $counter7 = 0
    $counter8 = 0
    $counter9 = 0

    #Breaks up each number set into an array for calculations
    $rangeC = $rangeD[$position].ToCharArray()
    
    #Goes through each array and counts the numbers
    for ($posR = 0; $posR -lt $rangeC.Length; $posR++) {
        switch($rangeC[$posR]) {
            1 { $counter1++ }
            2 { $counter2++ }
            3 { $counter3++ }
            4 { $counter4++ }
            5 { $counter5++ }
            6 { $counter6++ }
            7 { $counter7++ }
            8 { $counter8++ }
            9 { $counter9++ }
        }
    }

    #Checks to see if there are two adjacent numbers
    if (($counter1 -eq 2) -or ($counter2 -eq 2) -or ($counter3 -eq 2) -or ($counter4 -eq 2) -or ($counter5 -eq 2) -or ($counter6 -eq 2) -or ($counter7 -eq 2) -or ($counter8 -eq 2) -or ($counter9 -eq 2)) { $counter++ }
}

#Final Result
Write-Host("counter")
$counter