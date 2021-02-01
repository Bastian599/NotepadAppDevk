Set-ExecutionPolicy Bypass -Scope Process -Force
cd $env:USERPROFILE\Downloads
wget "https://software.sonicwall.com/NetExtender/NetExtender-10.2.302.MSI"
Start-Process msiexec.exe -Wait -ArgumentList '/I $env:USERPROFILE\Downloads\install.msi /quiet'
return
