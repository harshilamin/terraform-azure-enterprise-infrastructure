#!/usr/bin/env bash
set -euo pipefail

terraform fmt -check -recursive
"$(dirname "$0")/validate-all.sh"

if command -v tflint >/dev/null 2>&1; then
  tflint --init
  tflint --recursive --format compact
else
  echo "TFLint is not installed; skipping."
fi

if command -v checkov >/dev/null 2>&1; then
  checkov --directory . --config-file .checkov.yml
else
  echo "Checkov is not installed; skipping."
fi

if command -v tfsec >/dev/null 2>&1; then
  tfsec . --config-file .tfsec.yml
else
  echo "tfsec is not installed; skipping."
fi

if command -v trivy >/dev/null 2>&1; then
  trivy config --config trivy.yaml .
else
  echo "Trivy is not installed; skipping."
fi

if command -v markdownlint >/dev/null 2>&1; then
  markdownlint "**/*.md" --ignore ".terraform"
else
  echo "markdownlint is not installed; skipping."
fi

echo "Quality checks completed."
