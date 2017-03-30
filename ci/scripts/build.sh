#!/bin/sh

set -eux

rm -rf build-artifact

cp -r project build-artifact

cd build-artifact
pwd
ls -lah
