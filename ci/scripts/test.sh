#!/bin/sh

green="\033[1;32m"
red="\033[1;31m"
none="\033[1;0m\n"

cd project

printf "$green[+] Installing project requirements$none"

pip install -r requirements.txt

printf "$green[+] Done\n$none"

printf "$green[+] Running tests$none"

./tests/test.sh

if [ $? -eq 0  ]
then
    printf "$green[+] Tests passed$none"
else
    printf "$red[+] Tests failed$none"
    exit 1
fi

