$time=41667266
$distancesRecord=244104712281040
$press=6000000
$distanceNewRecord=0

while ($press -lt $time) {
        $distance=($time-$press)*$press
        If ($distance -gt $distancesRecord) {
            $distanceNewRecord+=1
        }
        $press+=1
    }
Write-Host "Antwoord:" $distanceNewRecord
