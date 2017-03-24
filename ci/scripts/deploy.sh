#!/bin/sh
set -x -e

build_path=/tmp/builds/

apt update
apt install -y sshpass

alias scp="sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no -p $PORT"

ssh $HOST "mkdir -p $build_path"

scp project/renht/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/renht/scripts/run.sh $HOST:$build_path/run.sh
scp project/renht/docker/start.sh $HOST:$build_path/start.sh
scp project/renht/docker/Dockerfile $HOST:$build_path/Dockerfile

ssh $HOST 'bash /tmp/builds/run.sh'
