#!/bin/sh

set -x -u -o pipefail

export FLASK_APP=./app.py
python -m flask run --host=0.0.0.0 --port=80
