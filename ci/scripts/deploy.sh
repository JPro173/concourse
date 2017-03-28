#!/bin/sh
set -xeu

build_path=/tmp/builds/

echo "[+] Installing dependencies"

apt update
apt install -y expect

echo "[+] Done\n"

echo "[+] Settings up SSH"

mkdir -p ~/.ssh/
echo ${PK} > ~/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh/

./ci/scripts/add-pk.sh ~/.ssh/id_rsa aa

echo "[+] Done\n"

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="ssh -o StrictHostKeyChecking=no -p $PORT"

ssh $HOST "mkdir -p $build_path"

scp artifact/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/scripts/run.sh $HOST:$build_path/run.sh
scp project/docker/start.sh $HOST:$build_path/start.sh
scp project/docker/Dockerfile $HOST:$build_path/Dockerfile

ssh $HOST 'bash /tmp/builds/run.sh'
