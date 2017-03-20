#!/bin/sh
set -x -e
apt update
apt install -y sshpass

build_path=/tmp/builds/
mkdir $build_path

ls -la .

alias scp="sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no"
alias ssh="sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no"

scp project/html.tar.gz $HOST:$build_path
scp project/scripts/deploy.sh $HOST:run.sh

ssh $HOST "bash run.sh $build_path"
