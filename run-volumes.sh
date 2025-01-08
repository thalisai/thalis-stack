#! /bin/bash

set -x

. ./run-base.sh

build_image
run_container \
  -v thalis-data-comfyui:/var/lib/comfyui \
  -v thalis-data-ollama:/var/lib/ollama \
  -v thalis-data-open-webui:/var/lib/open-webui \
  -v thalis-tmp:/tmp
