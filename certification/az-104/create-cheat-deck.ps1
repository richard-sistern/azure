# Hacky little script to generate text for Remark JS slide deck
$nl = [Environment]::NewLine
$ns = "---"


$ssTextArea = "#AZ-104 Cheat Deck" + $nl + $ns + $nl
$maxLines = 18

$files = Get-ChildItem -Path $PSScriptRoot -Filter *cheat*.md | Sort-Object LastWriteTime
foreach ($file in $files) {
    $filePath = "$PSScriptRoot\$file"
    
    $count = 0

    $lines = Get-Content $filePath -Delimiter $nl
    foreach ($line in $lines) {
        
        if ($count -eq $maxLines) {
            $ssTextArea += $nl
            $ssTextArea += $ns
            $ssTextArea += $nl
            $count = 0
        }
        $ssTextArea += $line

        $count++
    }
}

$ssTextArea | Set-Content -Path slides.txt