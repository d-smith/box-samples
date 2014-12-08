#!/bin/sh

curl https://api.box.com/2.0/folders/0 \
-H "Authorization: Bearer $DEVTOKEN"
