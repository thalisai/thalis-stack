#! /bin/bash

cd /opt/ollama
OLLAMA_HOST=0.0.0.0:11434 OLLAMA_MODELS=/var/lib/ollama/models ollama serve
