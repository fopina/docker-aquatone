#!/bin/sh

IMAGE=fopina/aquatone

cd $(dirname $0)
docker build -t $IMAGE:latest .
docker push $IMAGE:latest