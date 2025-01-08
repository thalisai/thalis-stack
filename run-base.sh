#! /bin/bash

IMAGE_NAME="thalis-stack:dev"
CONTAINER_NAME="thalis-test"

function build_image() {
  docker build \
    -t $IMAGE_NAME \
    .
}

function run_container() {
  volume_args="$@"

  docker run \
    -it \
    --rm \
    --name $CONTAINER_NAME \
    -p 8080:8080 \
    -p 8188:8188 \
    -p 11434:11434 \
    $volume_args \
    $IMAGE_NAME
}
