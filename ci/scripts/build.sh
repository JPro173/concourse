#!/bin/sh
mkdir -p artifact

cd project

printf "\033[1;32m[+] Building tar.gz archive\033[0m\n"

tar -zcvf project.tar.gz app.py tests/ requirements.txt

printf "\033[1;32m[+] Done\033[0m\n"

cd ..

mv project/project.tar.gz artifact/
