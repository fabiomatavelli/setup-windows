# Setup Windows Machines

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

New-Item -ItemType 'directory' -Path $env:HOMEPATH -Name 'Projects'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'wts'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'sys'
New-Item -ItemType 'directory' -Path $env:HOMEDRIVE -Name 'sys\base'

$packages = @("googlechrome", 
              "slack",
              "lightshot",
              "rdmfree",
              "git",
              "github",
              "tortoisegit",
              "notepadplusplus",
              "vscode",
              "skype",
              "cmder",
              "cyberduck",
              "python2",
              "awscli",
              "awstools.powershell",
              "gpg4win",
              "terraform")

choco update chocolatey -y -V

foreach($pkg in $packages) {
  Start-Process choco -ArgumentList @("install", $pkg, "-y", "-V") -Wait
}

& "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

Start-Process choco -ArgumentList @("install","firebird","--version 2.5.7.1000","-params '/Classic'","-y","-V") -Wait
Start-Process choco -ArgumentList @("install","nodejs","--version 8.12.0","-y","-V") -Wait

(New-Object System.Net.WebClient).DownloadFile('https://dl.google.com/go/go1.11.1.windows-amd64.msi', "$env:HOMEPATH\Downloads\Go.msi")
& .\msiexec.exe /i "$env:HOMEDRIVE\$env:HOMEPATH\Downloads\Go.msi" /quiet
