#
# Makefile
# mchristof, 2016-11-04 11:04
#

NAME := mchristof/jq

default: build

build:
	docker build -t $(NAME) .

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
