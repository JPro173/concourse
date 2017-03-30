#!/bin/sh

set -eux

cp -fr project/* build-artifact

cd build-artifact
pwd
ls -lah
