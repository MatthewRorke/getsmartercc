#!/bin/sh -l
echo $GITHUB_WORKSPACE
# ln -s $GITHUB_WORKSPACE /code
# cd /code
# ls -la
CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE engines:install
CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE /usr/src/app/bin/codeclimate analyze