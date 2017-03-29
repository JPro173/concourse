#!/bin/sh
cd project

echo "[+] Installing project requirements"

pip install -r requirements.txt

echo "[+] Done\n"

echo "[+] Starting tests"

python test.py

echo "[+] Tests passed"
