$ErrorActionPreference = "Stop"

Write-Host "Checking Terraform formatting..."
terraform fmt -check -recursive

Write-Host "Validating Terraform environments..."
& "$PSScriptRoot\validate-all.ps1"

if (Get-Command tflint -ErrorAction SilentlyContinue) {
    Write-Host "Running TFLint..."
    tflint --init
    tflint --recursive --format compact
}
else {
    Write-Warning "TFLint is not installed; skipping."
}

if (Get-Command checkov -ErrorAction SilentlyContinue) {
    Write-Host "Running Checkov..."
    checkov --directory . --config-file .checkov.yml
}
else {
    Write-Warning "Checkov is not installed; skipping."
}

if (Get-Command tfsec -ErrorAction SilentlyContinue) {
    Write-Host "Running tfsec..."
    tfsec . --config-file .tfsec.yml
}
else {
    Write-Warning "tfsec is not installed; skipping."
}

if (Get-Command trivy -ErrorAction SilentlyContinue) {
    Write-Host "Running Trivy..."
    trivy config --config trivy.yaml .
}
else {
    Write-Warning "Trivy is not installed; skipping."
}

if (Get-Command markdownlint -ErrorAction SilentlyContinue) {
    Write-Host "Running markdownlint..."
    markdownlint "**/*.md" --ignore ".terraform"
}
else {
    Write-Warning "markdownlint is not installed; skipping."
}

Write-Host "Quality checks completed."
