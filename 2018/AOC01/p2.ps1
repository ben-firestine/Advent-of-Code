$frequency = 0
$lookup = @{}

:loop while($true) {
    foreach($line in Get-Content C:\Frequency.txt) { 
        $frequency += [int]$line 

        if($lookup.ContainsKey($frequency)) { 
            Write-Output "The answer is: " $frequency
            break loop
        }

        $lookup[$frequency]++
    }
}

