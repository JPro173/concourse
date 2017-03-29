#!/bin/sh
set -xeu

build_path=/tmp/builds/

echo "[+] Installing dependencies"

pip install pexpect

echo "[+] Done\n"

echo "[+] Settings up SSH"

pwd
mkdir -p ~/.ssh/
echo $PK > ~/.ssh/id_rsa_no_pf

chmod 600 ~/.ssh/id_rsa_no_pf
chmod 700 ~/.ssh/
chmod 700 ~

ls -la -R ~

echo "[+] Done\n"

ssh -i /root/.ssh/id_rsa_no_pf -o StrictHostKeyChecking=no injectyy@45.32.236.15 "touch 123"

alias scp="scp -o StrictHostKeyChecking=no -P $PORT"
alias ssh="python project/ci/scripts/ssh.py"

ssh $HOST "touch 1245"

#scp artifact/html.tar.gz $HOST:$build_path/html.tar.gz
#scp project/scripts/run.sh $HOST:$build_path/run.sh
#scp project/docker/start.sh $HOST:$build_path/start.sh
#scp project/docker/Dockerfile $HOST:$build_path/Dockerfile

#ssh $HOST 'bash /tmp/builds/run.sh'
