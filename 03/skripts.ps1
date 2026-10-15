$servisi = get-service
$running = 0
$stopped = 0
foreach ($s in $servisi) {
	if ($s.status -eq "running") {$running++}
	elseif ($s.status -eq "stopped") {$stopped++}
}
write-output "Darbojas: $running"
write-output "Aptureti: $stopped"
write-output "Kopa: $($running + $stopped)"