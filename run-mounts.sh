#! /bin/bash

set -x

. ./run-base.sh

build_image
run_container \
  -v $HOME/.thalis/data/comfyui:/var/lib/comfyui \
  -v $HOME/.thalis/data/ollama:/var/lib/ollama \
  -v $HOME/.thalis/data/open-webui:/var/lib/open-webui \
  -v /tmp/supervisor:/tmp/supervisor
