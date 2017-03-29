#!/bin/sh
set -eu

build_path=/tmp/builds/

printf "\033[1;32m[+] Setting up SSH\033[0m\n"

mkdir -p ~/.ssh/
echo "$PK" > /root/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh/
chmod 700 ~

printf "\033[1;32m[+] Done\033[0m\n\n"

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="ssh -o StrictHostKeyChecking=no -p $PORT $HOST"


printf "\033[1;32m[+] Transporting files on server\033[0m\n"
ssh "mkdir -p $build_path"
scp artifact/project.tar.gz $HOST:$build_path/project.tar.gz
scp project/ci/scripts/run.sh $HOST:$build_path/run.sh
scp project/ci/docker/start.sh $HOST:$build_path/start.sh
scp project/ci/docker/Dockerfile $HOST:$build_path/Dockerfile
printf "\033[1;32m[+] Done\033[0m\n\n"

printf "\033[1;32m[+] Deploying\033[0m\n"
ssh 'bash /tmp/builds/run.sh'
printf "\033[1;32m[+] Done\033[0m\n"
