#!/bin/sh
cd project

echo "$(tput setaf 1)[+] Installing project requirements$(tput sgr0)"

pip install -r requirements.txt

echo "$(tput setaf 1)[+] Done$(tput sgr0)\n"

echo "$(tput setaf 1)[+] Running tests$(tput sgr0)\n"

echo "$(tput setaf 1)[+] Running test.sh$(tput sgr0)"
./test.sh

echo "\n$(tput setaf 1)[+] Test passed$(tput sgr0)"
