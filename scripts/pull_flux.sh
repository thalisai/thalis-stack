#! /bin/bash

echo "Pulling language models..."

ollama pull huihui_ai/llama3.3-abliterated:70b-instruct-q4_K_M

echo "Pulling image models..."

if [[ ! -d /var/lib/comfyui/models/checkpoints ]]; then
  mkdir -p /var/lib/comfyui/models/checkpoints
fi

if [[ ! -f /var/lib/comfyui/models/checkpoints/flux-dev-fp8.safetensors ]]; then
  curl https://models.thalis.dev/flux-dev-fp8.safetensors -o /var/lib/comfyui/models/checkpoints/flux-dev-fp8.safetensors
fi
