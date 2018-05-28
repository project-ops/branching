#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push rjsjrjndrn/dev:${TRAVIS_COMMIT}
