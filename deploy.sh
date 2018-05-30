#!/bin/bash

echo "$1" | docker login -u rjsjrjndrn --password-stdin

images=$(docker images | grep rjsj | awk '{print $1}')

for image in $images;do
    docker push $image
done
