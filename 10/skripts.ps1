$proccount = (get-process).count
write-output "Process count: $proccount"

$running = 0
$stopped = 0
foreach ($s in get-service) {
	if ($s.status -eq "running") {$running++}
	elseif ($s.status -eq "stopped") {$stopped++}
}
write-output "Services (Working/Stopped): $running / $stopped"

$starttime = (get-date).addhours(-48)
$errors = get-winevent -filterhashtable @{logname='system'; level=2; starttime=$starttime} -erroraction silentlycontinue
write-output "Error count (48h): $($errors.count)"

$diski = get-ciminstance win32_logicaldisk -filter "drivetype=3"
foreach ($d in $diski) {
	$freegb = [math]::round($d.freespace / 1gb, 2)
	write-output "Disc $($d.deviceid) Free: $freegb gb"
}