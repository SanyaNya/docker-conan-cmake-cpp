#!/bin/sh

NAME=centos7_32

docker run --rm -it -v "$HOME":"/home/$USER" $NAME bash
