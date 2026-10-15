$diski = get-ciminstance win32_logicaldisk -filter "drivetype=3"
$limits = 10
foreach ($d in $diski) {
	$totalgb = [math]::round($d.size / 1gb, 2)
	$freegb = [math]::round($d.freespace / 1gb, 2)
	write-output "Disk $($d.deviceid) Kopejais: $totalgb gb, Brivs: $freegb gb"
	if ($freegb -lt $limits) {write-output "Bridinajums: Diskam $($d.deviceid) ir mazak par $limits gb"}
}