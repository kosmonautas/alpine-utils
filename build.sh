#!/bin/bash

IMAGE_NAME=monomi/alpine-utils
IMAGE_TAG=$(date +"%Y-%m-%d")

docker build --no-cache -t ${IMAGE_NAME}:${IMAGE_TAG} .

docker push ${IMAGE_NAME}:${IMAGE_TAG}

docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest
docker push ${IMAGE_NAME}:latest

docker rmi ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest
