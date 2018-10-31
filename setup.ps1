# Setup Windows Machines

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

New-Item -ItemType 'directory' -Path $env:HOMEPATH -Name 'wts'
New-Item -ItemType 'directory' -Path 'C:\' -Name 'wts'
New-Item -ItemType 'directory' -Path 'C:\' -Name 'sys'
New-Item -ItemType 'directory' -Path 'C:\' -Name 'sys\base'

choco update chocolatey -y -V

choco install googlechrome -y -V
choco install slack -y -V

choco install rdmfree -y -V
choco install github -y -V
choco install notepadplusplus -y -V
choco install vscode -y -V

choco install firebird --version 2.5.7.1000 -params '/Classic' -y -V

choco install nodejs --version 8.12.0 -y -V

choco install awscli -y -V
choco install awstools.powershell -y -V

(New-Object System.Net.WebClient).DownloadFile('https://dl.google.com/go/go1.11.1.windows-amd64.msi', "$env:HOMEPATH\Downloads\Go.msi")
Start-Process msiexec.exe -Wait -ArgumentList "/I $env:HOMEPATH\Downloads\Go.msi /quiet"

choco install gpg4win -y -V
