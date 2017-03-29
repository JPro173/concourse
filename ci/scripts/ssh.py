#!/usr/bin/python3
import sys
import pexpect


host = sys.argv[1]

cmd = sys.argv[2]

child = pexpect.spawn('ssh -i /root/.ssh/id_rsa_no_pf -o StrictHostKeyChecking=no {} {}'.format(host, cmd))
print(child.readline())
child = pexpect.spawn('ssh -i /root/.ssh/id_rsa_no_pf -o StrictHostKeyChecking=no {} {}'.format(host, cmd))
print(child.readline())
