#!/bin/bash
# added sample comment

docker run -d -p 8000:8000 -d ${IMAGE_NAME}
sleep 2s
curl -sS --fail localhost:8000 || exit 1
