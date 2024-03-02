Import-Module ActiveDirectory
function findmemberofgroup{

$str = "ACL_*_LocalAdmin"
Clear-Host
$aclgroups = Get-ADGroup -Filter {Name -like $str}  -Properties * | Select-Object -property SamAccountName,Name,Description,DistinguishedName,CanonicalName,GroupCategory,GroupScope,whenCreated

foreach($group in $aclgroups){
        $members = (Get-ADGroup $group.Name -Properties Member).Member

        if($members -ne $null -or $members -ne ""){
            #write-host $group.Name
            #write-host "Members:"
            foreach($member in $members){
                (get-aduser -identity $member).SamAccountName
            }
            #write-host
        }
        $members = ""
}
}

$output = findmemberofgroup
Write-host "Accounts to check:"
write-host
$output | Where-Object -FilterScript{ $_ -cnotmatch 'adm.'}