#!/bin/sh
cd project

printf "\033[1;31m[+] Installing project requirements\033[0m"

pip install -r requirements.txt

printf "\033[1;31m[+] Done\n\033[0m\n"

printf "\033[1;31m[+] Running tests\033[0m\n"

printf "\033[1;31m[+] Running test.sh\033[0m"
./test.sh

printf "\033[1;31m[+] Tests passed\033[0m"
