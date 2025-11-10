param(
  [Parameter(Mandatory=$true)][ValidateSet("HF","HF-Mirror","ModelScope")][string]$Source
)

switch ($Source) {
  "HF" { Write-Output "HF" }
  "HF-Mirror" { Write-Output "HF-Mirror" }
  "ModelScope" { Write-Output "ModelScope" }
}
Write-Output "OK"