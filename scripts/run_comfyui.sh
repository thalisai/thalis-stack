#! /bin/bash

cd /opt/comfyui
source venv/bin/activate
python main.py --cpu --listen 0.0.0.0 --output-directory /var/lib/comfyui/output
