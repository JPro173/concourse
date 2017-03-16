#!/bin/sh
set -x -e
echo [+] Deploy is running ...
apt update
apt install -y wget
wget https://github.com/JPro173/concourse/raw/master/html.tar.gz
tar -xf html.tar.gz
ls -la .
pwd
cd html
python -m SimpleHTTPServer 80
