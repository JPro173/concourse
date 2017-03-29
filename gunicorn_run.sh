###!/bin/sh

set -x -u -e

HOST=${HOST:-0.0.0.0}
PORT=${PORT:-80}
PIDFILE=${PIDFILE:-/tmp/app.pid}

if [ -f $PIDFILE ]
then
    echo [+] File $PIDFILE exists;
    set +e
    kill -9 $(cat $PIDFILE);
    set -e
    rm $PIDFILE;
fi

gunicorn -D -p "$PIDFILE" -w 4 -b $HOST:$PORT app:app
