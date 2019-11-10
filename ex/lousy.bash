#!/bin/sh

docker run --rm -it \
	-u `id -u`:`id -g` \
	-w `pwd` \
	-v $HOME:$HOME \
	${IMG} \
	$*
