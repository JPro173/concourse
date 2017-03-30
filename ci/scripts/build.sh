#!/bin/sh
mkdir -p artifact

cd project

printf "\033[1;32m[+] Building docker image\033[0m\n"
docker build .
printf "\033[1;32m[+] Done\033[0m\n"

cd ..

mv project/project.tar.gz artifact/
