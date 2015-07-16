NAME=prognostikos/ruby-web-baseimage
VERSION=0.0.1

.PHONY: build

build:
	docker build -t $(NAME):$(VERSION) --rm .
