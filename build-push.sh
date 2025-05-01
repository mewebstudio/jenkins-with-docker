#!/bin/bash

IMAGE_NAME="mewebstudio/jenkins-with-docker"
VERSION="1.0.1"

docker buildx build \
  --platform linux/amd64,linux/arm64,linux/ppc64le \
  -t $IMAGE_NAME:$VERSION \
  -t $IMAGE_NAME:latest \
  --push .
