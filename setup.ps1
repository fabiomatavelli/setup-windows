# Setup Windows Machines

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

New-Item -ItemType 'folder' -Path $env:HOMEPATH -Name 'wts'
New-Item -ItemType 'folder' -Path 'C:\' -Name 'wts'
New-Item -ItemType 'folder' -Path 'C:\' -Name 'sys'
New-Item -ItemType 'folder' -Path 'C:\' -Name 'sys\base'

choco update chocolatey -y

choco install googlechrome -y
choco install rdmfree -y
choco install github -y
choco install notepadplusplus -y
choco install firebird --version 2.5.7.1000 -params '/Classic' -y