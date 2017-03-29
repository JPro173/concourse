#!/bin/sh
set -eu

build_path=/tmp/builds/

echo "[+] Settings up SSH"

mkdir -p ~/.ssh/
echo "$PK" > /root/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh/
chmod 700 ~

echo "[+] Done\n"

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="ssh -o StrictHostKeyChecking=no -p $PORT $HOST"

ssh "mkdir -p $build_path"

scp artifact/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/ci/scripts/run.sh $HOST:$build_path/run.sh
scp project/ci/docker/start.sh $HOST:$build_path/start.sh
scp project/ci/docker/Dockerfile $HOST:$build_path/Dockerfile

ssh 'bash /tmp/builds/run.sh'
