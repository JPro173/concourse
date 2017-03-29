#!/bin/sh
cd project

echo -e "\033[31m][+] Installing project requirements\x1B[0m]"

pip install -r requirements.txt

echo -e "\033[31m][+] Done\x1B[0m]\n"

echo -e "\033[31m][+] Running tests\x1B[0m]\n"

echo -e "\033[31m][+] Running test.sh\x1B[0m]"
./test.sh

echo -e "\n\033[31m][+] Test passed\x1B[0m]"
