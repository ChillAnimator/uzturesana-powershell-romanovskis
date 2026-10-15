$targetservices = get-service | where-object {$_.starttype -eq "automatic" -and $_.status -eq "stopped"}

if ($targetservices.count -eq 0) {
    write-output "Found 0 services"
} else {
    $targetservices | foreach-object {start-service -name $_.name}
}