$invoer = Get-Content -Path "C:/Repos/AoC2023/AoC2023/Dag 2/input.txt"
$Opgeteld = 0

$MaxRed=12
$MaxGreen=13
$MaxBlue=14

foreach ($regel in $invoer) {
    $GameNumber=$regel.Split(":")[0]
    $GameNumber=$GameNumber.Split(" ")[1]
    $setofcards=($regel.Substring(7)).split(";")
    $OK="OK"
    foreach ($setje in $setofcards) {
        $kleurenset=$setje.Split(",")
        foreach ($kleur in $kleurenset) {
            $kleurnummer=$kleur.Split(" ")
            $aantal=[int]$kleurnummer[1]
            $kleurtje=$kleurnummer[2]
            If ($kleurtje -eq "red") {
                if ($aantal -gt $MaxRed) {
                    $OK="NOK"
                }
            }
            If ($kleurtje -eq "green") {
                if ($aantal -gt $MaxGreen) {
                    $OK="NOK"
                }
            }
            If ($kleurtje -eq "blue") {
                if ($aantal -gt $MaxBlue) {
                    $OK="NOK"
                }
            }
        }
    }
    if ($OK -eq "OK") {
        $Opgeteld+=$GameNumber
    }
    $OK="OK"
}
Write-Host "Antwoord:" $Opgeteld