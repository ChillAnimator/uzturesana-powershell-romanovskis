$starttime = (get-date).addhours(-48)
$errors = get-winevent -filterhashtable @{logname='system'; level=2; starttime=$starttime} -erroraction silentlycontinue
write-output "Kludu skaits pedejos 48 stundas: $($errors.count)"
if ($errors.count -gt 0) {
	$mostfrequent = $errors | group-object providername | sort-object count -descending | select-object -first 1
	write-output "Biežakais avots: $($mostfrequent.name) ($($mostfrequent.count) times)"
} else {
	write-output "Biežakais avots: nav kludu"
}