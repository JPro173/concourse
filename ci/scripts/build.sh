#!/bin/sh

set -eux

cp -fr project/* artifact

cd artifact
pwd
ls -lah
cat app.py
