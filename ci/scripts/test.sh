#!/bin/sh
cd project

echo "[+] Installing project requirements"

pip install -r requirements.txt

echo "[+] Done\n"

echo "[+] Starting tests"

echo "[+] Running test.sh"
./test.sh
echo "\r[+] Running test.sh ... OK"

echo "[+] Tests passed"
