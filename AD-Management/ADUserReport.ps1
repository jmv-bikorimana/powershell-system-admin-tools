# ADUserReport.ps1
# Purpose: Generate Active Directory User Report

Import-Module ActiveDirectory

$OutputFile = ".\AD_User_Report.csv"

Get-ADUser -Filter * -Properties DisplayName, EmailAddress, Enabled, LastLogonDate |
Select-Object `
SamAccountName,
DisplayName,
EmailAddress,
Enabled,
LastLogonDate |
Export-Csv $OutputFile -NoTypeInformation

Write-Host "Report generated successfully."
Write-Host "Output File: $OutputFile"
