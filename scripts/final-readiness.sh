#!/usr/bin/env bash
set -euo pipefail

echo "=== Repository 1 final readiness ==="

terraform fmt -check -recursive
"$(dirname "$0")/validate-all.sh"
"$(dirname "$0")/test-modules.sh"
python -m mkdocs build --strict

forbidden="$(
  git ls-files |
    grep -E '(^|/)(terraform\.tfvars|[^/]+\.auto\.tfvars(\.json)?|.*\.tfstate(\..*)?|.*\.(pem|pfx|key))$' ||
    true
)"

if [[ -n "${forbidden}" ]]; then
  echo "Sensitive or generated files are tracked:"
  echo "${forbidden}"
  exit 1
fi

echo "Repository 1 final readiness checks passed."
