$times=41667266
$distancesRecords=244104712281040
$counter=0
$press=0
$distanceNewRecord=0
$opgeteld=1

foreach ($time in $times) {
    while ($press -lt $time) {
        $distance=($time-$press)*$press
        If ($distance -gt $distancesRecords[$counter]) {
            $distanceNewRecord+=1
        }
        $press+=1
    }
    $opgeteld*=$distanceNewRecord
    $distanceNewRecord=0
    $press=0
    $counter+=1
    }
Write-Host "Antwoord:" $Opgeteld
