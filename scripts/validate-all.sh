#!/usr/bin/env bash
set -euo pipefail

terraform fmt -check -recursive

for environment in dev qa prod; do
  echo "Initializing ${environment} without remote backend..."
  terraform -chdir="environments/${environment}" init -backend=false -reconfigure

  echo "Validating ${environment}..."
  terraform -chdir="environments/${environment}" validate
done

echo "All Terraform environments are valid."
