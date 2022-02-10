#!/bin/bash

hugo

if [ $? -ne 0 ]; then
  echo "Hugo building failed!"
  exit 1
fi

git add .
git commit -m Update
git push origin master

