# Change makefile default shell to enable sourcing variables from file
SHELL := /bin/bash

VERSION := $(if $(VERSION),$(VERSION),latest)

.PHONY: build
build:
	docker build . -t pokstad/godockci

.PHONY: tag
tag:
	docker tag pokstad/godockci:latest pokstad/godockci:${VERSION}

.PHONY: push
push:
	docker push pokstad/godockci:${VERSION}
