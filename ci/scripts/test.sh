#!/bin/sh
cd project

echo "[+] Installing project requirements"

pip install -r requirements.txt

echo "[+] Done\n"

echo "[+] Starting tests"

./test.sh

echo "[+] Tests passed"
