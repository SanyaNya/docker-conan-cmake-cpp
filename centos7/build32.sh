#!/bin/sh

NAME=centos7_32
BASE_IMAGE=centos:7@sha256:8faead07bd1d5fdd17414a1759eae004da5daa9575a846f4730f44dec0f47843 #linux/386 tag
GCC_VERSION=14.1.1
CMAKE_VERSION=3.29.5
ARCH=i686

docker build -t $NAME \
    --build-arg BASE_IMAGE=$BASE_IMAGE \
    --build-arg GCC_VERSION=$GCC_VERSION \
    --build-arg CMAKE_VERSION=$CMAKE_VERSION \
    --build-arg ARCH=$ARCH \
    .
