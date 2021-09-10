# set this line to True if you want to get file content, False if not
$getFileContent = $True
$currentDate = Get-Date -Format("yyyy-MM-dd HH:mm:ss")
# modify below variable to set paths
$paths = @("\path\to\file", "\path\to\secondfile")

foreach ($path in $paths) {
    $content = ""
    if((Test-Path $path -PathType Leaf)) {
        $exists = "Yes"
		if ($getFileContent -eq $True) {
			$content = Get-Content $path
		}
    } else {
        $exists = "No"
    }
    
    $xml += "<CHECKFILES>`n"
    $xml += "<PATH>" + $path + "</PATH>`n"
    $xml += "<EXIST>" + $exists + "</EXIST>`n"
    $xml += "<CONTENT>" + $content + "</CONTENT>`n"
    $xml += "<LAST_CHECK>" + $currentDate + "</LAST_CHECK>`n"
    $xml += "</CHECKFILES>`n"
}
 

Write-Output $xml