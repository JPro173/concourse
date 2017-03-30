#!/bin/sh

set -eux

cp -r project artifact-tmp

mv artifact-tmp atifact

cd artifact
pwd
ls -lah
