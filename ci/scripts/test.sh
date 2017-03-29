#!/bin/sh
cd project

printf "\033[1;31m[+] Installing project requirements\033[0m\n"

pip install -r requirements.txt

printf "\033[1;31m[+] Done\n\033[0m\n\n"

printf "\033[1;31m[+] Running tests\033[0m\n\n"

printf "\033[1;31m[+] Running test.sh\033[0m\n\n"
./test.sh

printf "\033[1;31m[+] Tests passed\033[0m\n"
