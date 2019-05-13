function Get-Guid{
  Param(
    [parameter(Mandatory=$true)]
    [string]$Name
  )
  $path = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
  Get-ItemProperty -Path $path | Where-Object {$_.DisplayName -like "*$name*"} | select Displayname, ModifyPath
}

Get-Guid -Name "powershell"
