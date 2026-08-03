#!/usr/bin/env bash
set -euo pipefail

terraform fmt -check -recursive

for environment in dev qa prod; do
  echo "Validating ${environment}..."
  terraform -chdir="environments/${environment}" init -backend=false -reconfigure
  terraform -chdir="environments/${environment}" validate
done
