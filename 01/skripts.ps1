$os = get-ciminstance win32_operatingsystem
$psversion = $psversiontable.psversion.tostring()
$date = get-date
$proccount = (get-process).count
write-output "Datoru nosaukums: $($env:computername)"
write-output "OS: $($os.caption)"
write-output "Buvejuma numurs: $($os.buildnumber)"
write-output "PS Versija: $psversion"
write-output "Datums n Laiks: $date"
write-output "Procesu skaits: $proccount"