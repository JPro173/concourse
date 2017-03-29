#!/bin/sh
set -xeu

build_path=/tmp/builds/

echo "[+] Installing dependencies"

pip install pexpect

apt update
apt install -y ssh openssl

echo "[+] Done\n"

echo "[+] Settings up SSH"

pwd
mkdir -p ~/.ssh/
echo "$PK" > /root/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh/
chmod 700 ~

echo "[+] Done\n"

eval `ssh-agent -s`

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="ssh -o StrictHostKeyChecking=no -p $PORT $HOST"

ssh "mkdir -p $build_path"

scp artifact/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/scripts/run.sh $HOST:$build_path/run.sh
scp project/docker/start.sh $HOST:$build_path/start.sh
scp project/docker/Dockerfile $HOST:$build_path/Dockerfile

ssh 'bash /tmp/builds/run.sh'
