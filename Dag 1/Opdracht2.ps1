$numbers = @{
    "one" = 1
    "two" = 2
    "three" = 3
    "four" = 4
    "five" = 5
    "six" = 6
    "seven" = 7
    "eight" = 8
    "nine" = 9
}

$invoer= Get-Content -Path "C:/Repos/AoC2023/AoC2023/Dag 1/input2.txt"
$Opgeteld = 0
$nieuwestring="" 

foreach ($regel in $invoer) {
    foreach ($letter in $regel) {
        $nieuwestring+=$letter
        if($nieuwestring -Contains $numbers) {
            $regel = $regel -replace $first_part, $numbers[$first_part]
            $nieuwestring=""  f  
        }
    }

    # $first_part = ($regel -split "\d+")[0]
    # if ($numbers.ContainsKey($first_part)) {
    #     $regel = $regel -replace $first_part, $numbers[$first_part]
    # }

    # $last_part = ($regel -split "\d+")[-1]
    # if ($numbers.ContainsKey($last_part)) {
    #     $regel = $regel -replace $last_part, $numbers[$last_part]
    # }
    
    $EersteGetal = ([char[]]$regel | Where-Object { $_ -match "\d"} | Select-Object -First 1)
    $LaatsteGetal = ([char[]]$regel | Where-Object { $_ -match "\d"} | Select-Object -Last 1)
    $Getal = [int]($EersteGetal + $LaatsteGetal)
    $Opgeteld += $Getal
    write-host $getal
}
Write-Host $Opgeteld