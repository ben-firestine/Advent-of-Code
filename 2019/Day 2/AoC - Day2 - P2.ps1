####################################################################################################
#Advent of Code - 2019
#Day 2 - Part 2
#Ben Firestine
#Wayne State University
#
#NOTES: I was stuck at this problem for awhile until I realized that I wasn't getting a new dataset after ever noun verb run
#Once I moved the Array inside the for each loops, I was able to solve the puzzle.
####################################################################################################
foreach ($noun in 0..99) {
    foreach ($verb in 0..99) {
        
        [Array]$Array = Get-Content -Path 'F:\Personal Files\Advent of Code\2019\Day 2\D2-PuzzleInput.txt'
        $Array[1] = $noun
        $Array[2] = $verb


        #Runs through the calculations to get the value of Array[0]
        for ($counter = 0; $counter -lt $Array.length; $counter = $counter + 4) {
            if ($Array[$counter] -eq 1) {
                $first = $Array[$counter + 1]
                $second = $Array[$counter + 2]
                $third = $Array[$counter + 3]

                $Array[$third] = [int]$Array[$first] + [int]$Array[$second]
            }
            elseif ($Array[$counter] -eq 2) {
                $first = $Array[$counter + 1]
                $second = $Array[$counter + 2]
                $third = $Array[$counter + 3]

                $Array[$third] = [int]$Array[$first] * [int]$Array[$second]   
            }
            elseif ($Array[$counter] -eq 99) {
                break
            }
        }

        #Checks to see if it is the verified number
        if ($Array[0] -eq 19690720) { "Noun: {0} Verb: {1}" -f $noun,$verb }
    }
}