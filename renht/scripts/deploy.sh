#!/bin/sh
set -x -e

build_path=/tmp/builds/

alias scp="sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no -p $PORT"

ssh $HOST "mkdir -p $build_path"

scp project/renht/html.tar.gz $HOST:$build_path/html.tar.gz
scp project/renht/scripts/run.sh $HOST:$build_path/run.sh
scp project/renht/docker/Dockerfile $HOST:$build_path/run.sh

ssh $HOST "docker build $build_path; docker run -p 8080:8080 -dit `docker ps -l -q`"
