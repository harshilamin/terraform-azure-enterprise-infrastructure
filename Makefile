SHELL := /bin/bash

.PHONY: help fmt fmt-check validate lint security docs clean

help:
	@echo "make fmt        Format Terraform"
	@echo "make fmt-check  Check Terraform formatting"
	@echo "make validate   Validate Dev, QA, and Prod"
	@echo "make lint       Run TFLint"
	@echo "make security   Run Checkov"
	@echo "make docs       Generate module documentation"
	@echo "make clean      Remove local Terraform artifacts"

fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -check -recursive

validate:
	@for environment in dev qa prod; do \
		terraform -chdir=environments/$$environment init -backend=false -reconfigure; \
		terraform -chdir=environments/$$environment validate; \
	done

lint:
	tflint --init
	tflint --recursive --format compact

security:
	checkov --directory . --framework terraform --compact --soft-fail --skip-path .terraform

docs:
	terraform-docs recursive modules

clean:
	find . -type d -name .terraform -prune -exec rm -rf {} +
	find . -type f -name '*.tfplan' -delete
	find . -type f -name 'tfplan.txt' -delete
