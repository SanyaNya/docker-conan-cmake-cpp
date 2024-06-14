#!/bin/sh
cd centos7

./build32.sh
./build64.sh

docker tag centos7_32-conan-cmake-cpp sanyanya/centos7_32-conan-cmake-cpp
docker tag centos7_64-conan-cmake-cpp sanyanya/centos7_64-conan-cmake-cpp

docker push sanyanya/centos7_32-conan-cmake-cpp
docker push sanyanya/centos7_64-conan-cmake-cpp
