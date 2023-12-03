$invoer = Get-Content -Path "C:/Users/gertjanb/OneDrive - Delta-N/#Scripts/Advent 2023/Dag 1/input.txt"
$Opgeteld = 0

foreach ($regel in $invoer) {
    If ($regel) {
        $EersteGetal  = ([char[]]$regel | Where-Object { $_ -match "\d"} | Select-Object -First 1)
        $LaatsteGetal = ([char[]]$regel | Where-Object { $_ -match "\d"} | Select-Object -Last 1)
        $Getal = [int]($EersteGetal + $LaatsteGetal)
        $Opgeteld += $Getal
    }
}
Write-Host "Antwoord:" $Opgeteld