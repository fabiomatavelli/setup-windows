# Setup Windows Machines

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

New-Item -ItemType 'directory' -Path $env:HOMEPATH -Name 'Projects'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'wts'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'sys'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'sys\base'

choco update chocolatey -y -V

choco install googlechrome -y -V
& "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

choco install slack -y -V
choco install lightshot -y -V
choco install rdmfree -y -V
choco install github -y -V
choco install notepadplusplus -y -V
choco install vscode -y -V
choco install skype -y -V

choco install firebird --version 2.5.7.1000 -params '/Classic' -y -V

choco install nodejs --version 8.12.0 -y -V

choco install python2 -y -V
choco install awscli -y -V
choco install awstools.powershell -y -V

(New-Object System.Net.WebClient).DownloadFile('https://dl.google.com/go/go1.11.1.windows-amd64.msi', "$env:HOMEPATH\Downloads\Go.msi")
& .\msiexec.exe /i "$env:HOMEDRIVE\$env:HOMEPATH\Downloads\Go.msi" /quiet

choco install gpg4win -y -V
