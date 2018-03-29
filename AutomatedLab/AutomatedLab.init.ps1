Add-Type -Path $PSScriptRoot\AutomatedLab.dll

if ((Get-Module -ListAvailable Ships) -and (Get-MOdule -ListAvailable AutomatedLab.Ships))
{
    Import-Module Ships,AutomatedLab.Ships
    [void] (New-PSDrive -PSProvider SHiPS -Name Labs -Root "AutomatedLab.Ships#LabHost" -WarningAction SilentlyContinue)
}
