#!/usr/bin/python3
import sys
import pexpect


host = sys.argv[1]

cmd = sys.argv[2]

child = pexpect.spawn('ssh -o StrictHostKeyChecking=no {} {}'.format(host, cmd))
for i in range(10):
    print(child.readline())
