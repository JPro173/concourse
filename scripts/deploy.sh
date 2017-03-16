#!/bin/sh
set -x -e
echo [+] Deploy is running ...
apk add --update ca-certificates openssl && update-ca-certificates
wget https://github.com/JPro173/concourse/raw/master/html.tar.gz
tar -xf html.tar.gz
ls -la .
pwd
