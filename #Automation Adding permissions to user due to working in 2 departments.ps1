#Automation Adding permissions to user due to working in 2 departments

##Copy New Permissions From another User
$UserWeNeedToCopyfrom = Read-Host "copy permission from: "
$MoveUser = Read-Host "to: "

Get-ADUser -Identity $UserWeNeedToCopyFrom -Properties memberof |
Select-Object -ExpandProperty memberof |
Add-ADGroupMember -Members $MoveUser


#change Department name

Get-ADUser $x -Properties * | Select department 

$NewDepartment = Read-Host "Enter New Department"

Set-ADUser -Identity $x -Department $NewDepartment

#End