SHELL := /bin/bash

.PHONY: help fmt validate lint docs clean

help:
	@echo "make fmt | validate | lint | docs | clean"

fmt:
	terraform fmt -recursive

validate:
	@for dir in environments/dev environments/qa environments/prod; do \
		if find $$dir -maxdepth 1 -name '*.tf' | grep -q .; then terraform -chdir=$$dir init -backend=false && terraform -chdir=$$dir validate; fi; \
	done

lint:
	tflint --recursive

docs:
	terraform-docs recursive modules

clean:
	find . -type d -name .terraform -prune -exec rm -rf {} +
