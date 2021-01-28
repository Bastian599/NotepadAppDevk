#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Assign Packages to Install
$Packages = 'googlechrome',`
            'visualstudiocode',`
            'git',`
            'notepadplusplus',`
            'citrix-workspace',`
            'openconnect-gui',`
            'azure-cli',`
            'microsoftazurestorageexplorer',`
            'azure-cosmosdb-emulator'

#Install Packages
ForEach ($PackageName in $Packages)
{choco install $PackageName -y}

#Reboot
Restart-Computer
