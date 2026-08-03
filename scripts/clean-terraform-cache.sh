#!/usr/bin/env bash
set -euo pipefail

for environment in dev qa prod; do
  terraform_directory="environments/${environment}/.terraform"

  if [[ -d "${terraform_directory}" ]]; then
    rm -rf "${terraform_directory}"
    echo "Removed ${terraform_directory}"
  fi
done

echo "Terraform module caches removed."
