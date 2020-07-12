.ONESHELL:
.SHELL := /bin/bash
.PHONY: ALL
.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

<<<<<<< HEAD
=======
# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

>>>>>>> chore: added pre-commit.yaml updated Makefile, and README
init: ## Install required tools for local environment
	brew install tfenv || exit 0
	tfenv install || exit 0
	brew install terraform_landscape || exit 0

fmt: ## Formats the TF
	terraform fmt -recursive

<<<<<<< HEAD
init: ## Initializes TF directory
	terraform init
=======
init: ## Initilizes TF directory
>>>>>>> chore: added pre-commit.yaml updated Makefile, and README

plan: ## Creates an execution plan
	terraform plan

apply: ## Applies the changes/actions to the execution plan
	terraform apply

pre-commit: ## Runs pre-commit hooks
	pre-commit run -a