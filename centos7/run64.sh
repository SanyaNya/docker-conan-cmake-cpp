#!/bin/sh

NAME=centos7_64

docker run --rm -it -v "$HOME":"/home/$USER" $NAME bash
