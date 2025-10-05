#Automation to change user permissions due to job and department moving
Import-Module ActiveDirectory

#Deleting existing permissions (AD groups)

$x = Read-Host "Enter the username who needs to change permissions: "

try{
Get-ADUser -Identity $x

$ADgroups = Get-ADPrincipalGroupMembership -Identity $x | where {$_.Name -ne "Domain Users"}

Write-Host "The user $x is a member of the following groups: "
$ADgroups | select name  

if ($ADgroups -ne $null){
Remove-ADPrincipalGroupMembership -Identity $x -MemberOf $ADgroups
}
}

catch{
Write-Host "$x Is Not exist"
}

#Copy New Permissions From another User

$UserExist = Read-Host "copy permission from: "

Get-ADUser -Identity $UserExist -Properties memberof |
Select-Object -ExpandProperty memberof |
Add-ADGroupMember -Members $x

#change Department name

Get-ADUser $x -Properties * | Select department 

$NewDepartment = Read-Host "Enter New Department"

Set-ADUser -Identity $x -Department $NewDepartment

