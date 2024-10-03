#!/usr/bin/env bash

tag=${1:-latest}
image="alpine/used-for-docker-scout-score-check-only"

for platform in linux/amd64 linux/arm/v7 linux/arm64/v8 linux/arm/v6 linux/ppc64le linux/s390x linux/386
do
  echo "Platfom is $platform"
  docker run --rm -ti --platform "${platform}" --entrypoint=sh ${image}:${tag} -c "uname -m"
done
