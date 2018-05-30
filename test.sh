#!/bin/bash
# added sample comment

version=version.env
docker run -d -p 8000:8000 -d rjsjrjndrn/dev:${version}_${TRAVIS_COMMIT}
sleep 2s
curl localhost:8000
