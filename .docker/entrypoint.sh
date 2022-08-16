#!/bin/sh -l
# ln -s $GITHUB_WORKSPACE /code #make symlink if needed
echo $GITHUB_WORKSPACE
/usr/src/app/bin/codeclimate analyze $GITHUB_WORKSPACE