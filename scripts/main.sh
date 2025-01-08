#! /bin/bash

SUPERVISOR_PATH=${SUPERVISOR_PATH:-/opt/supervisord}

cd $SUPERVISOR_PATH
source $SUPERVISOR_PATH/venv/bin/activate
supervisord -n -c $SUPERVISOR_PATH/supervisord.conf
