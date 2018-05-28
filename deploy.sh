#!/bin/bash
echo "$1" | docker login -u rjsjrjndrn --password-stdin
docker push rjsjrjndrn/$2
