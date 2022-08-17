#!/bin/sh -l
echo $GITHUB_WORKSPACE
ln -s $GITHUB_WORKSPACE /code
cd /code
ls -la
/usr/src/app/bin/codeclimate engines:install
/usr/src/app/bin/codeclimate analyze