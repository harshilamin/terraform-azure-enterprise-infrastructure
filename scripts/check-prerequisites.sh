#!/usr/bin/env bash
set -euo pipefail

required_commands=(terraform git)

for command_name in "${required_commands[@]}"; do
  if ! command -v "${command_name}" >/dev/null 2>&1; then
    echo "Missing required command: ${command_name}"
    exit 1
  fi
done

echo "Terraform: $(terraform version | head -n 1)"
echo "Git: $(git --version)"

if command -v tflint >/dev/null 2>&1; then
  echo "TFLint: $(tflint --version | head -n 1)"
else
  echo "TFLint: not installed"
fi

if command -v checkov >/dev/null 2>&1; then
  echo "Checkov: $(checkov --version)"
else
  echo "Checkov: not installed"
fi
