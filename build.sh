platform="linux/arm64,linux/amd64"

docker buildx build --tag alpine/used-for-docker-scout-score-check-only:v3 \
    --platform "${platform}" \
    --push --attest type=provenance,mode=max .
