# EventLogMonitor.ps1
# Purpose: Display recent critical system events

Get-EventLog System -EntryType Error -Newest 20 |
Select-Object TimeGenerated,
Source,
EventID,
Message
