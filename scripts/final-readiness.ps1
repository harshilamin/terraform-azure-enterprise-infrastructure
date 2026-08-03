$ErrorActionPreference = "Stop"

Write-Host "=== Repository 1 final readiness ==="

Write-Host "Checking Terraform formatting..."
terraform fmt -check -recursive

Write-Host "Validating Dev, QA, and Prod..."
& "$PSScriptRoot\validate-all.ps1"

Write-Host "Running native Terraform tests..."
& "$PSScriptRoot\test-modules.ps1"

Write-Host "Building MkDocs documentation in strict mode..."
python -m mkdocs build --strict

Write-Host "Checking for sensitive tracked files..."
$trackedFiles = git ls-files
$forbiddenPatterns = @(
    '(^|/)terraform\.tfvars$',
    '\.auto\.tfvars(\.json)?$',
    '\.tfstate(\..*)?$',
    '\.(pem|pfx|key)$'
)

$forbidden = foreach ($file in $trackedFiles) {
    foreach ($pattern in $forbiddenPatterns) {
        if ($file -match $pattern) {
            $file
            break
        }
    }
}

if ($forbidden) {
    Write-Error ("Sensitive or generated files are tracked:`n" + ($forbidden -join "`n"))
}

Write-Host "Repository 1 final readiness checks passed."
