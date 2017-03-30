#!/bin/sh

set -eux

mkdir artifact

cp -fr project/* artifact

cd artifact
pwd
ls -lah
