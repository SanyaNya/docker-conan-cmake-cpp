#!/bin/sh

NAME=centos7_64-conan-cmake-cpp
BASE_IMAGE=centos:7@sha256:dead07b4d8ed7e29e98de0f4504d87e8880d4347859d839686a31da35a3b532f #linux/amd64 tag
GCC_VERSION=14.1.0
CMAKE_VERSION=3.29.5
ARCH=x86_64

docker build -t $NAME \
    --build-arg BASE_IMAGE=$BASE_IMAGE \
    --build-arg GCC_VERSION=$GCC_VERSION \
    --build-arg CMAKE_VERSION=$CMAKE_VERSION \
    --build-arg ARCH=$ARCH \
    .
