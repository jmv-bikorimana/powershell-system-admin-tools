# BackupValidation.ps1
# Purpose: Verify backup files exist

$BackupPath = "D:\Backups"

if (Test-Path $BackupPath)
{
    Get-ChildItem $BackupPath |
    Select-Object Name, LastWriteTime
}
else
{
    Write-Host "Backup location not found."
}
