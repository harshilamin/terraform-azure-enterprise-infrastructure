SHELL := /bin/bash

.PHONY: help fmt fmt-check validate lint security markdown quality clean

help:
	@echo "make fmt         Format Terraform"
	@echo "make fmt-check   Check Terraform formatting"
	@echo "make validate    Validate Dev, QA, and Prod"
	@echo "make lint        Run TFLint"
	@echo "make security    Run Checkov, tfsec, and Trivy"
	@echo "make markdown    Run markdownlint"
	@echo "make quality     Run all local checks"
	@echo "make clean       Remove Terraform caches and plans"

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
	checkov --directory . --config-file .checkov.yml
	tfsec . --config-file .tfsec.yml
	trivy config --config trivy.yaml .

markdown:
	markdownlint "**/*.md" --ignore ".terraform"

quality: fmt-check validate lint security markdown

clean:
	find . -type d -name .terraform -prune -exec rm -rf {} +
	find . -type f -name '*.tfplan' -delete
	find . -type f -name 'tfplan.txt' -delete
