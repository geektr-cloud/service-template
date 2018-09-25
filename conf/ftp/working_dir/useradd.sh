#!/usr/bin/env bash

login="$1"
if [ ! -n "$login" ]; then
    echo "login name is required !"
    exit 1
fi

pure-pw useradd "$login" -f "$FTP_PASSWD_DB" -m -u "$FTP_USER_UID" -g "$FTP_USER_GID" -d "$FTP_USER_HOME"
