#!/bin/sh
set -x -e
apt update
apt install -y sshpass

build_path=/tmp/builds/
mkdir $build_path

ls -la .

alias scp="sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no"
alias ssh="sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no"

ssh $HOST -p $PORT "mkdir -p $build_path"

scp project/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/scripts/run.sh $HOST:run.sh

ssh $HOST "bash run.sh $build_path >/tmp/output 2>/tmp/errors <&- &"
