#!/bin/sh
set -x -e
apt update
apt install -y sshpass time

build_path=/tmp/builds/$(time)/
mkdira$ build_path

alias scp=sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no 
alias ssh=sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no 

scp html.tar.gz $HOST:$build_path
scp scripts/deploy.sh $HOST:run.sh

ssh $HOST "bash run.sh $build_path"
