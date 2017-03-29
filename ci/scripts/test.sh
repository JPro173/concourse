#!/bin/sh
cd project

printf "\033[1;32m[+] Installing project requirements\033[0m\n"

pip install -r requirements.txt

printf "\033[1;32m[+] Done\n\033[0m\n\n"

printf "\033[1;32m[+] Running tests\033[0m\n\n"

printf "\033[1;32m[+] Running test.sh\033[0m\n\n"
./test.sh

printf "\033[1;32m[+] Tests passed\033[0m\n"
