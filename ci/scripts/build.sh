#!/bin/sh

set -eux

file build-artifact

cp -fr project/* build-artifact

cd build-artifact
pwd
ls -lah
