#!/bin/bash
# added sample comment

verson=$(cat verson.env)
docker run -d -p 8000:8000 -d rjsjrjndrn/dev:${version}_latest
sleep 2s
curl -sS --fail localhost:8000 || exit 1
