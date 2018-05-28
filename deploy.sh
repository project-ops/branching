#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push rjsjrjndrn/dev_${TRAVIS_COMMIT}
