#!/bin/bash

if [ $# != 2 ]; then
  echo "Usage: upload.sh filename directory-id"
  exit 1
fi

curl https://upload.box.com/api/2.0/files/content \
-H "Authorization: Bearer $DEVTOKEN" \
-F filename=@$1 \
-F folder_id=$2
