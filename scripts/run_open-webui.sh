#! /bin/bash

cd /opt/open-webui
source venv/bin/activate
set -a && source .env && set +a
open-webui serve --port 8090
