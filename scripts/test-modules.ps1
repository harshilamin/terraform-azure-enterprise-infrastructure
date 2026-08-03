$ErrorActionPreference = "Stop"

$modules = @(
    "modules/naming",
    "modules/resource-group",
    "modules/subnet"
)

foreach ($module in $modules) {
    Write-Host "Initializing $module..."
    terraform "-chdir=$module" init -backend=false -reconfigure

    Write-Host "Testing $module..."
    terraform "-chdir=$module" test
}

Write-Host "All native Terraform tests passed."
