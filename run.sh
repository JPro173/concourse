#!/bin/sh

set -x -u -o pipefail

export PORT=8080
python app.py
