#! /bin/bash

echo "Pulling language models..."
ollama pull mannix/llama3.1-8b-abliterated:q4_k_m

echo "Pulling image models..."

if [[ ! -d /var/lib/comfyui/models/checkpoints ]]; then
  mkdir -p /var/lib/comfyui/models/checkpoints
fi

if [[ ! -f /var/lib/comfyui/models/checkpoints/sdxl-realcartoon-pony.safetensors ]]; then
  curl https://models.thalis.dev/sdxl-realcartoon-pony.safetensors -o /var/lib/comfyui/models/checkpoints/sdxl-realcartoon-pony.safetensors
fi
