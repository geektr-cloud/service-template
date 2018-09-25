#!/usr/bin/env bash

login="$1"
if [ ! -n "$login" ]; then
    echo "login name is required !"
    exit 1
fi

pure-pw userdel  "$login" -f "$FTP_PASSWD_DB" -m
