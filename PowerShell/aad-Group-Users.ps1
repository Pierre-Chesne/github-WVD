$aad_group_name = "WVDUsers"
$hostpool_rg = "RG-WVD-Hosts"
$hostpool_name = "Host-Pool-01"
$appgroup = "Host-Pool-01-DAG"

$aad_group_id = (Get-AzADGroup -DisplayName $aad_group_name).Id
$hostpool = Get-AzWvdHostPool -ResourceGroupName $hostpool_rg -Name $hostpool_name
foreach ($appgroup in $hostpool.ApplicationGroupReference){
    New-AzRoleAssignment -ObjectId $aad_group_id -Scope $appgroup -RoleDefinitionName "Desktop Virtualization User"
    }

    