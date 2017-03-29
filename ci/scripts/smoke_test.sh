#!/bin/sh
printf "\033[1;32m[+] Running smoke tests\033[0m\n\n"

./tests/smoke_test.sh

printf "\033[1;32m[+] Smoke tests passed\033[0m\n"
