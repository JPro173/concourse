#!/bin/sh
set -x -e
echo [+] Deploy is running ...
apt update
apt install wget
wget https://github.com/JPro173/concourse/raw/master/html.tar.gz
tar -xf html.tar.gz
ls -la .
pwd
