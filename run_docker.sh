#!/bin/bash


IMAGE_NAME="fastapi-app"
R_TAG="v1.0"
B_TAG="v1.1"

echo "Removing existing $IMAGE_NAME:$R_TAG images"
docker rmi $IMAGE_NAME:$R_TAG


echo "Building nem image $IMAGE_NAME:$B_TAG"
docker build --no-cache -t $IMAGE_NAME:$B_TAG .

echo "Loading nem image $IMAGE_NAME:$B_TAG to Kind"
kind load docker-image $IMAGE_NAME:$B_TAG
