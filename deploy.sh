#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u rjsjrjndrn --password-stdin
docker push rjsjrjndrn/dev:${TRAVIS_COMMIT}
