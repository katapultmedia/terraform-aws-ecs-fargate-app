.ONESHELL:
.SHELL := /bin/bash
.PHONY: ALL
.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

init: ## Install required tools for local environment
	brew install tfenv || exit 0
	tfenv install || exit 0
	brew install terraform_landscape || exit 0

fmt: ## Formats the TF
	terraform fmt -recursive

tfinit: ## Initializes TF directory
	terraform init

plan: ## Creates an execution plan
	terraform plan

apply: ## Applies the changes/actions to the execution plan
	terraform apply

pre-commit: ## Runs pre-commit hooks
	pre-commit run -a