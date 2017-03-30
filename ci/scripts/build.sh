#!/bin/sh

set -eux

cp -r project artifact-tmp

mv artifact-tmp artifact

cd artifact
pwd
ls -lah
