# import the Active Directory module in order to be able to use get-ADuser and Add-AdGroupMembe cmdlet
import-Module ActiveDirectory

# enter login name of the first user
$copy = Read-host "Enter username to copy from: "

# enter login name of the second user
$paste = Read-host "Enter username to copy to: "

# copy-paste process. Get-ADuser membership     | then selecting membership                       | and add it to the second user
get-ADuser -identity $copy -properties memberof | select-object memberof -expandproperty memberof | Add-AdGroupMember -Members $paste

#Get-aduser -identity $copy -properties company | select-object company | Set-aduser $paste 