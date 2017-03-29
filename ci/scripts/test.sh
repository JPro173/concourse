#!/bin/sh
cd project

echo "[+] Installing project requirements"

pip install -r requirements.txt

echo "[+] Done\n"

echo "[+] Starting tests"

echo "[+] Running test.sh\r"
./test.sh
echo "[+] Running test.sh ... OK"

echo "[+] Tests passed"
