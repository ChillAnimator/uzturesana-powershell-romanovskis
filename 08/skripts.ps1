$time1 = measure-command {get-service -name spooler}
$time2 = measure-command {get-ciminstance win32_service -filter "name='spooler'"}
write-output "Get-Service time: $($time1.totalmilliseconds) ms"
write-output "Get-CimInstance time: $($time2.totalmilliseconds) ms"