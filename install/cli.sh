#!/bin/sh

if [ "$[$(date +%s) - $(stat -c %Z /var/lib/apt/periodic/update-success-stamp)]" -ge 600000 ]; then
apt-get update
fi

apt-get -y install most tmux
