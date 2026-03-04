#!/bin/sh
set -e

DATA_DIR=/opt/alist/data
mkdir -p $DATA_DIR

/opt/alist/alist server --data $DATA_DIR &
ALIST_PID=$!
sleep 5
kill $ALIST_PID 2>/dev/null || true
sleep 2

/opt/alist/alist restore --data $DATA_DIR --file /opt/alist/alist_backup.json 2>/dev/null || true

/opt/alist/alist admin set mypassword123 --data $DATA_DIR 2>/dev/null || true

exec /opt/alist/alist server --data $DATA_DIR
