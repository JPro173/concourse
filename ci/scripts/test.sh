#!/bin/sh
cd project

echo $"\033[31m[+] Installing project requirements\x1B[0m"

pip install -r requirements.txt

echo $"\033[31m[+] Done\x1B[0m]\n"

echo $"\033[31m[+] Running tests\x1B[0m\n"

echo $"\033[31m[+] Running test.sh\x1B[0m"
./test.sh

echo $"\n\033[31m[+] Test passed\x1B[0m"
