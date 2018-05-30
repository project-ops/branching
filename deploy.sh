#!/bin/bash
echo "$1" | docker login -u rjsjrjndrn --password-stdin
echo "image name is : $2"
docker push rjsjrjndrn/$2
