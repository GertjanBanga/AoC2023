$invoer=Get-Content -Path "C:/Repos/AoC2023/AoC2023/Dag 7/input.txt"
$counter=1
$Opgeteld=0
$5oaK=0
$4oaK=0
$3oaK=0
$2oaK=0

foreach ($cardSet in $invoer) {
    $cards=$cardSet.split(" ")
    $cards=-Join ($cards[0].ToCharArray() | Sort-Object)
    Write-Host "Cards: " $counter $cards -ForegroundColor Yellow
    $cards=$cards | Select-String -AllMatches "(.)\1*" | % { $_.Matches } | % { $_.Value }
    foreach ($card in $cards) {
        If ($card.Length -eq 5) {
            $5oaK+=1
            $5oaKcard=$card.Substring(0,1)
            Write-Host "Five of a Kind" $5oaKcard
        }
        If ($card.Length -eq 4) {
            $4oaK+=1
            $4oaKcard=$card.Substring(0,1)
            Write-Host "For of a Kind" $4oaKcard
        }
        If ($card.Length -eq 3) {
            $3oaK+=1
            $3oaKcard=$card.Substring(0,1)
            Write-Host "Three of a Kind" $3oaKcard
        }
        If ($card.Length -eq 2) {
            $2oaK+=1
            $2oaKcard=$card.Substring(0,1)
            Write-Host "One Pair" $2oaKcard
        }
        Write-Host "5oaK:" $5oaK "4oaK:" $4oaK "3oaK:" $3oaK "2oaK:" $2oaK
    }
    $counter+=1
#     If ($cards -eq $FiveOfaKind[]) {

#     }
}

Write-Host "Antwoord:" $Opgeteld
