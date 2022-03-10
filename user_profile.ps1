# Alias 
Set-Alias ll ls
Set-Alias time date
Set-Alias cls clear
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias chmod 'C:\Program Files\Git\usr\bin\chmod.exe'
Set-Alias wget Invoke-WebRequest
Set-Alias curl Invoke-WebRequest
Set-Alias touch New-Item
Set-Alias -Name np -Value C:\Windows\notepad.exe
# fun ll display hidden
function la {
    Param($path = ".")
    dir $path -Force
}
# lệnh xóa toàn quyền
function delete {
    Remove-Item -Force $args
}
Set-Alias -Name rm -Value delete

# lệnh ẩn với quyền
function hidden {
	attrib +s +h +r $args
}
Set-Alias -Name hid -Value hidden

# lệnh hiển thị với quyền
function display {
	attrib -s -h -r $args
}
Set-Alias -Name dis -Value display

# Ssh AWS
function ServerJenkins {
	ssh -i ~\KeyAWS\ServerJenkins.pem ec2-user@13.213.42.172
}
Set-Alias -Name sshjenkins -Value ServerJenkins

function ServerMyCv {
	ssh -i ~\KeyAWS\ServerMyCv.pem ec2-user@54.179.23.54
}
Set-Alias -Name sshcv -Value ServerMyCv

function ServerWeb {
	ssh -i ~\KeyAWS\ServerWeb.pem ec2-user@54.254.250.203
}
Set-Alias -Name sshweb -Value ServerWeb

function WebServerCEH {
	ssh -i ~\KeyAWS\WebServerCEH.pem ec2-user@13.213.10.253
}
Set-Alias -Name sshceh -Value WebServerCEH

function douback {
	cd ../..
}
Set-Alias -Name ... -Value douback

# setup alias Which
function global:which ([string]$command) {
  if (-not($command)) { throw "ERROR: Please supply a command name" }
  (Get-Command $command).Path
}

# disk check
function disk-space {
    Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,@{'Name' = 'FreeSpace (GB)'; Expression= { [int]($_.FreeSpace / 1GB) }}
}
Set-Alias -Name disk-sp -Value disk-space

function sum-disk-space {
    (Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,@{'Name' = 'FreeSpace (GB)'; Expression= { [int]($_.FreeSpace / 1GB) }} | Measure-Object -Property 'FreeSpace (GB)' -Sum).Sum
}
Set-Alias -Name sum-disk-sp -Value sum-disk-space

# Top Monitor
function top-monitor {
    while (1) {Get-Process | sort -desc cpu | select -first 10 | format-table -autosize;
    sleep -seconds 3; cls;
    write-host "Handles  NPM(K)    PM(K)      WS(K) VM(M)   CPU(s)     Id ProcessName";
    write-host "-------  ------    -----      ----- -----   ------     -- -----------"}
}
Set-Alias -Name top -Value top-monitor

# Git
function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-branch { git branch $args }
Set-Alias -Name gb -Value git-branch

function git-commit-m { git commit -m $args }
Set-Alias -Name gitcm -Value git-commit-m

function git-checkout { git checkout $args }
Set-Alias -Name gitco -Value git-checkout

function git-log { git log }
Set-Alias -Name gitl -Value git-log

function git-branch-delete { git branch -d $args }
Set-Alias -Name gdd -Value git-branch-delete

#function git-diff { git diff $args }
#Set-Alias -Name gd -Value git-diff

#function git-diff-cached { git diff --cached }
#Set-Alias -Name gdc -Value git-diff-cached

#function git-diff-master { git diff master }
#Set-Alias -Name gdm -Value git-diff-master

#function git-commit-all { git commit -a }
#Set-Alias -Name gca -Value git-commit-all

#function git-fetch { git fetch }
#Set-Alias -Name gf -Value git-fetch

#function git-rebase-continue { git rebase --continue }
#Set-Alias -Name grc -Value git-rebase-continue


