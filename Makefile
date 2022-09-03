#!make
NAME       ?= $(shell basename $(CURDIR))
VERSION		 ?= $(shell cat $(PWD)/.version 2> /dev/null || echo v0)

# Deno commands
DENO    = deno
BUNDLE  = $(DENO) bundle
RUN     = $(DENO) run
TEST    = $(DENO) test
FMT     = $(DENO) fmt
LINT    = $(DENO) lint
BUILD   = $(DENO) compile
DEPS    = $(DENO) info
INSPECT = $(DENO) run --inspect-brk

DENOVERSION = 1.25.1

.PHONY: help clean deno-install install deno-version deno-upgrade check fmt dev env test bundle build inspect doc all release

default: help

# show this help
help:
	@echo 'usage: make [target] ...'
	@echo ''
	@echo 'targets:'
	@grep -E '^[a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

env: ## environment project
	@echo $(CURDIR)
	@echo $(NAME)
	@echo $(VERSION)

deno-install: ## install deno version and dependencies
	$(DENO) upgrade --version $(DENOVERSION)

deno-version: ## deno version
	$(DENO) --version

deno-upgrade: ## deno upgrade
	$(DENO) upgrade

check: ## deno check files
	$(DEPS)
	$(FMT) --check
	$(LINT) --unstable

fmt: ## deno format files
	$(FMT)

dev: ## deno run dev mode
	$(RUN) --allow-net --allow-read --allow-env=NODE_DEBUG --watch main.tsx --dev

test: ## deno run test
	$(TEST) --coverage=cov_profile

install:
	$(DENO) install .

inspect: ## deno inspect 
	@echo "Open chrome & chrome://inspect"
	$(INSPECT) --allow-all --unstable main.ts

vendor: ## deno vendor
	$(DENO) vendor main.tsx
  
release:
	git tag $(VERSION)
	git push --tags
