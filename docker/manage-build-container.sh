#!/bin/bash

docker_image_name="yocto-bs"
docker_image_tag="ubuntu-16.04"

build_docker_image() {
  docker build . -t ${docker_image_name}:${docker_image_tag}
}

run_docker_container() {
  if [ ! -d buildvol ]; then
    mkdir -p buildvol
  fi
  docker run --rm -it \
    -v $(pwd)/buildvol:/workdir \
    ${docker_image_name}:${docker_image_tag} --workdir "/workdir"
}

if [ "$1" = "build" ]; then
  build_docker_image
elif [ "$1" = "run" ]; then
  run_docker_container
else
  echo "Usage: $0 (build|run)"
  exit 1
fi
