#!/bin/bash

if [ $# != 1 ]; then
  echo "Usage: download.sh file-id"
  exit 1
fi

curl -L https://api.box.com/2.0/files/$1/content \
-H "Authorization: Bearer $DEVTOKEN"
