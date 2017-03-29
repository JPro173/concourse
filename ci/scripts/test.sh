#!/bin/sh
cd project

printf "\033[1;31mThis is red text\033[0m\n""]]"

pip install -r requirements.txt

echo $"\033[31m[+] Done\x1B[0m]\n"

echo $"\033[31m[+] Running tests\x1B[0m\n"

echo $"\033[31m[+] Running test.sh\x1B[0m"
./test.sh

echo $"\n\033[31m[+] Test passed\x1B[0m"
