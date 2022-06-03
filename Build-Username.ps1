$FirstN = Read-Host "First Name:"

$LastN = Read-Host "Last Name:"

#$FirstN = "Jo^hn"
$FirstN = $FirstN.tolower() -replace '[\W]', ''

#$LastN = "Hampton"
$LastN = $LastN.ToLower() -replace '[\W]', ''

$FirstName = $FirstN.ToCharArray()

$FLetter = $FirstName[0]

$username = $FLetter + $LastN

Write-Host $username