#!/usr/bin/python3
import sys
import subprocess

def subprocessCall(args):
    cp = subprocess.run(args, stdout=subprocess.PIPE, universal_newlines=True)
    cp.check_returncode()
    return cp

host = sys.argv[1]

cmd = sys.argv[2]

print(subprocessCall(["ssh", host, cmd]).stdout, file=sys.stderr)
