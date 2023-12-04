$invoer = Get-Content -Path "C:/Repos/AoC2023/AoC2023/Dag 4/input.txt"
$Opgeteld = 0

foreach ($regel in $invoer) {
    If ($regel) {
        $winningtemp=$regel.split("|")[0]
        $winning=$winningtemp.split(":")[1]
        $winning=$winning.split(" ")
        $winning=$winning | Where-Object {$_.Trim() -ne ""}
        $numbers=$regel.split("|")[1]
        $numbers=$numbers.split(" ")
        $numbers=$numbers  | Where-Object {$_.Trim() -ne ""}
        $matched=Compare-Object -ReferenceObject $winning -DifferenceObject $numbers -IncludeEqual -ExcludeDifferent | ForEach-Object {$_.InputObject}
        If ($matched.count -gt 1 ) {
            $Opgeteld+=[math]::Pow(2, ($matched.count )-1)
        }
        else {
            $Opgeteld+=$matched.count
        }
    }
}
Write-Host "Antwoord:" $Opgeteld