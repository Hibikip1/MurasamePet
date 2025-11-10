$path = 'D:\MurasamePet\gpt_sovits\install.ps1'
$lines = Get-Content -LiteralPath $path
for ($i=1; $i -le $lines.Count; $i++) {
    try {
        $text = ($lines[0..($i-1)] -join "`r`n")
        [System.Management.Automation.ScriptBlock]::Create($text) | Out-Null
    } catch {
        Write-Host "Parse failed at line $i"
        break
    }
}
Write-Host "Analyzed $i lines; total lines: $($lines.Count)"
