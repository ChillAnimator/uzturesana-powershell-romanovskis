$drivers = get-ciminstance win32_pnpsigneddriver | where-object {$_.driverprovidername -notlike "*microsoft*"} | select-object DeviceName, DriverProviderName, DriverVersion
$drivers | export-csv -path "draiveri.csv" -notypeinformation -encoding utf8
write-output "Rows in the CSV file: $($drivers.count)"