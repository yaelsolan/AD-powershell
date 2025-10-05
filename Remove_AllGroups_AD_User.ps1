Import-Module ActiveDirectory
$employeeSAN = Read-Host "SamAccountName "


try{
	Get-ADUser -Identity $employeeSAN
	#if that doesn't throw you to the catch this person exists. So you can continue

	$ADgroups = Get-ADPrincipalGroupMembership -Identity $employeeSAN | where {$_.Name -ne "Domain Users"}
    $ADgroups | select name
	if ($ADgroups -ne $null){
		Remove-ADPrincipalGroupMembership -Identity $employeeSAN -MemberOf $ADgroups #-Confirm:$false
	}
}#end of try block
catch{
	Write-Host "$employeeSAN Is Not in AD Or Misspelled"
}#end of catch block