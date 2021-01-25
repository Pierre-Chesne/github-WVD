
$AADGroupName= ""
$dagName= ""
$rgName= ""



New-AzRoleAssignment `
  -ObjectId (Get-AzADGroup -DisplayName $AADGroupName).Id `
  -RoleDefinitionName "Desktop Virtualization User" `
  -ResourceName $dagName `
  -ResourceGroupName $rgName `
  -ResourceType 'Microsoft.DesktopVirtualization/applicationGroups'