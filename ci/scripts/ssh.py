#!/usr/bin/python3
import sys
import pexpect


host = sys.argv[1]

cmd = sys.argv[2]

child = pexpect.spawn('ssh -i /root/.ssh/id_rsa_no_pf -o StrictHostKeyChecking=no injectyy@45.32.236.15 {}'.format(host, cmd))
print(child.readline())
child = pexpect.spawn('ssh -i /root/.ssh/id_rsa_no_pf -o StrictHostKeyChecking=no injectyy@45.32.236.15 "touch 123"'.format(host, cmd))
child.send('\n')
print(child.readline())
