# ServiceHealthCheck.ps1
# Purpose: Check status of critical Windows services

$Services = @(
    "DNS",
    "DHCPServer",
    "W32Time",
    "EventLog"
)

foreach ($Service in $Services)
{
    $Status = Get-Service -Name $Service -ErrorAction SilentlyContinue

    if ($Status)
    {
        Write-Host "$($Status.Name) : $($Status.Status)"
    }
    else
    {
        Write-Host "$Service : Service Not Found"
    }
}
