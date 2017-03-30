#!/bin/sh

set -eux

rm -rf artifact

cp -r project artifact

cd artifact
pwd
ls -lah
