#!/bin/sh

set -eux

mkdir build-artifact

cp -fr project/* build-artifact

cd build-artifact
pwd
ls -lah
