#!/usr/bin/env bash

image=${1:-latest}

for platform in linux/amd64 linux/arm/v7 linux/arm64/v8 linux/arm/v6 linux/ppc64le linux/s390x linux/386
do
  echo "Platfom is $platform"
  docker run --rm -ti --platform "${platform}" --entrypoint=sh ${image} -c "uname -m"
done
