#!/bin/sh -l
echo "PREPARING"
# ln -s $GITHUB_WORKSPACE /code
# cd /code
# ls -la
curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo make install

CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze