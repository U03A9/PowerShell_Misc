$spinner = ('/^v^\ SCRIPT RUNNING /^v^\', '\^v^/ SCRIPT RUNNING \^v^/')
$complete = ('/^v^\ SCRIPT FINISHED /^v^\')

$pos = $host.UI.RawUI.CursorPosition
$i = 0
$j = 0
do{

	$host.UI.RawUI.CursorPosition = $pos
	Write-Host $spinner[$i] -NoNewline
	$i++

	if ($i -ge $spinner.Length)
	{
		$i = 0
	}
	Start-Sleep -Milliseconds 700
    $j++
}

while ($j -lt 10)

$host.UI.RawUI.CursorPosition = $pos
Write-Host $complete
Write-Host "This was a test of the system.`n`tHello World!`n`tThis is a key: This is a value!"
