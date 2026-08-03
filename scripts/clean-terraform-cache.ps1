$ErrorActionPreference = "Stop"

$environments = @("dev", "qa", "prod")

foreach ($environment in $environments) {
    $terraformDirectory = "environments/$environment/.terraform"

    if (Test-Path $terraformDirectory) {
        Remove-Item $terraformDirectory -Recurse -Force
        Write-Host "Removed $terraformDirectory"
    }
}

Write-Host "Terraform module caches removed."
