####################################################################################################
#Advent of Code - 2019
#Day 1 - Part 2
#Ben Firestine
#Wayne State University
#
#NOTES: Originally I thought the program was supposed to go through all the numbers one by one
#After some further looking and thinking, I found out that it always skips four digits when the number is a 1 or a 2
#This means if you have a section like 1,1,1,1,0,10, the code triggers on the first 1 and then skips to the number 0
####################################################################################################
[Array]$Array = Get-Content -Path 'F:\Personal Files\Advent of Code\2019\Day 2\D2-PuzzleInput.txt'

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

write-host("Value of position 0 in the array")
$Array[0]
