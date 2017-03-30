#!/bin/sh
set -eu

green="\033[1;32m"
red="\033[1;31m"
none="\033[1;0m\n"

build_path=/tmp/builds/

printf "$green[+] Setting up SSH$none"

mkdir -p ~/.ssh/
echo "$PK" > /root/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh/
chmod 700 ~

printf "$green[+] Done\n$none"

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="ssh -o StrictHostKeyChecking=no -p $PORT $HOST"


printf "$green[+] Transporting files on server$none"
ssh "mkdir -p $build_path"
scp project/ci/scripts/run.sh $HOST:$build_path/run.sh
scp project/docker-compose.yml $HOST:$build_path/docker-compose.yml
printf "$green[+] Done\n$none"

printf "$green[+] Deploying$none"
ssh 'bash /tmp/builds/run.sh'
if [ $? -eq 0  ]
then
    printf "$green[+] Done$none"
else
    printf "$red[!] Deploy failed$none"
    exit 1
fi
