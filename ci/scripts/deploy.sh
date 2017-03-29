#!/bin/sh
set -xeu

build_path=/tmp/builds/

echo "[+] Installing dependencies"

pip install pexpect

apt update
apt install -y ssh openssl

echo "[+] Done\n"

echo "[+] Settings up SSH"

pwd
mkdir -p ~/.ssh/
echo $PK > /root/.ssh/id_rsa_no_pf
echo $PBK > /root/.ssh/id_rsa_no_pf.pub
echo $PK > /etc/ssh/ssh_host_rsa_key

chmod 600 ~/.ssh/id_rsa_no_pf
chmod 600 ~/.ssh/id_rsa_no_pf.pub
chmod 700 ~/.ssh/
chmod 700 ~

cat /etc/ssh/ssh_host_rsa_key

echo "[+] Done\n"

ssh -i /root/.ssh/id_rsa_no_pf  -vvv -o StrictHostKeyChecking=no injectyy@45.32.236.15 "touch 123"

alias scp="scp -o StrictHostKeyChecking=no -o StrictModes=no -P $PORT"
alias ssh="python project/ci/scripts/ssh.py"

ssh $HOST "touch 1245"

#scp artifact/html.tar.gz $HOST:$build_path/html.tar.gz
#scp project/scripts/run.sh $HOST:$build_path/run.sh
#scp project/docker/start.sh $HOST:$build_path/start.sh
#scp project/docker/Dockerfile $HOST:$build_path/Dockerfile

#ssh $HOST 'bash /tmp/builds/run.sh'
