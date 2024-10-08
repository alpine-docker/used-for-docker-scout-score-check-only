#!/usr/bin/env bash

set -ex

image=${1:-latest}

for platform in linux/amd64 linux/arm/v7 linux/arm64/v8 linux/arm/v6 linux/ppc64le linux/s390x linux/386
do
  echo "Platfom is $platform"
  docker pull --platform "${platform}" ${image}
  docker pull --platform "${platform}" ${image}
  docker run --rm -i --platform "${platform}" --entrypoint=sh ${image} -c "uname -m"
done
