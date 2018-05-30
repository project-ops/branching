#!/bin/bash

echo "$1" | docker login -u rjsjrjndrn --password-stdin

images=$(docker images | grep rjsjrjndrn)

for image in $images;do
  docker push $image
done
