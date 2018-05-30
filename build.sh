#!/bin/bash

# dev ==> images to ci and docker hub private repo(image name: dev/${release-version}_${commit-id})
# dev -> release branch
# release_branch ==> images to qa
# relase_branch merged to master => gold image to docker public repo (image name: dev/major-version_latest,version)

export version=$(cat version.env)
docker build -t rjsjrjndrn/dev:${version}_latest .
docker build -t rjsjrjndrn/dev:${version}_${TRAVIS_COMMIT} .
