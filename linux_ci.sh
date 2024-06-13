#!/bin/sh
cd centos7

./build32.sh
./build64.sh

docker tag centos7_32 sanyanya/centos7_32
docker tag centos7_64 sanyanya/centos7_64

docker push sanyanya/centos7_32
docker push sanyanya/centos7_64
