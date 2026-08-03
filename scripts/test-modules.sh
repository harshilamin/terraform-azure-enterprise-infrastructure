#!/usr/bin/env bash
set -euo pipefail

modules=(
  "modules/naming"
  "modules/resource-group"
  "modules/subnet"
)

for module in "${modules[@]}"; do
  echo "Initializing ${module}..."
  terraform -chdir="${module}" init -backend=false -reconfigure

  echo "Testing ${module}..."
  terraform -chdir="${module}" test
done

echo "All native Terraform tests passed."
