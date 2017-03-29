#!/usr/bin/python3
import sys
import pexpect


host = sys.argv[1]

cmd = sys.argv[2]

child = pexpect.spawn('ssh -i -o StrictHostKeyChecking=no {} {}'.format(host, cmd))
print(child.readline())
