#
# Makefile
# mchristof, 2016-11-04 11:04
#

NAME := mchristof/jq
VERSION := 0.1

default: build

build:
	docker build -t $(NAME) .

tag:
	docker tag $(NAME) $(NAME):$(VERSION)
	docker tag $(NAME) $(NAME):latest
	git tag $(VERSION)

push:
	git push --tags
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest


all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
