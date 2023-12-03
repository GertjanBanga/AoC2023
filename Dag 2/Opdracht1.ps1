$invoer = Get-Content -Path "C:/Users/gertjanb/OneDrive - Delta-N/#Scripts/Advent 2023/Dag 2/input.txt"
$Opgeteld = 0

$MaxRed=12
$MaxGreen=13
$MaxBlue=14

foreach ($regel in $invoer) {
    $GameNumber=Split($regel,":")
}
Write-Host "Antwoord:" $Opgeteld