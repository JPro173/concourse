#!/bin/sh
set -x -e
echo [+] Deploy is running ...
apt update
apt install -y wget
apt install -y sshpass
wget https://github.com/JPro173/concourse/raw/master/html.tar.gz
tar -xf html.tar.gz
ls -la .
pwd
mkdir ~/.ssh/

sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no html.tar.gz $HOST:/tmp/abc; true
ls
