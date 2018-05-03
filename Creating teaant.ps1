Login-AzureRmAccount

cd D:\LatestRDmi\LatestRDmi\PowershellModules

Import-Module .\Microsoft.RdInfra.RdPowershell.dll

$password = "keepcalm@123" | ConvertTo-SecureString -asPlainText -Force
$username = "deepak.jena@peopletechcsp.onmicrosoft.com" 

$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Set-RdsContext -DeploymentUrl 'http://rdbroker-2t22o32gtse56.azurewebsites.net' -Credential $credential

Get-RdsTenant


