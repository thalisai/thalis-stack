#! /bin/bash

EXTRA_ARGS="${@:1}"
echo "Running comfyui with extra args: $EXTRA_ARGS"

cd /opt/comfyui
source venv/bin/activate
python main.py $EXTRA_ARGS --listen 0.0.0.0 --output-directory /var/lib/comfyui/output
