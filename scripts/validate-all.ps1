$ErrorActionPreference = "Stop"

terraform fmt -check -recursive

$environments = @("dev", "qa", "prod")

foreach ($environment in $environments) {
    Write-Host "Initializing $environment without remote backend..."
    terraform "-chdir=environments/$environment" init -backend=false -reconfigure

    Write-Host "Validating $environment..."
    terraform "-chdir=environments/$environment" validate
}

Write-Host "All Terraform environments are valid."
