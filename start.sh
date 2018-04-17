#!/usr/bin/env bash

. venv/bin/activate

export FLASK_APP=microblog.py
export LANG="C.UTF-8"
export LC_ALL="C.UTF-8"

#export FLASK_DEBUG=1

if [ "$1" = "shell" ]; then
  flask shell
elif [ "$1" = "public" ]; then
  flask run --host='0.0.0.0'
else
  flask run
fi

deactivate
