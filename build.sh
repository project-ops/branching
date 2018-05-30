#!/bin/bash

# dev ==> images to ci and docker hub private repo(image name: dev/${release-version}_${commit-id})
# dev -> release branch
# release_branch ==> images to qa
# relase_branch merged to master => gold image to docker public repo (image name: dev/major-version_latest,version)

version=$(cat version.env)
if [[ ${TRAVIS_BRANCH} != master ]]; then
    docker build -t rjsjrjndrn/dev:${version}_${TRAVIS_COMMIT} .
    export IMAGE_NAME="rjsjrjndrn/dev:${version}_${TRAVIS_COMMIT}"
    exit 0
fi
export IMAGE_NAME="rjsjrjndrn/nodeapp:${version}"
docker buld -t rjsjrjndrn/nodeapp:${version}_latest .
docker buld -t rjsjrjndrn/nodeapp:${version} .
