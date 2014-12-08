#!/bin/bash

if [ $# != 1 ]; then
  echo "Usage: fileinfo.sh file-id"
  exit 1
fi

curl https://api.box.com/2.0/files/$1 \
-H "Authorization: Bearer $DEVTOKEN"
