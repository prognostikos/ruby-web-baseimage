NAME=prognostikos/ruby-web-baseimage
VERSION=0.0.2

.PHONY: build

build:
	docker build -t $(NAME):$(VERSION) --rm .
