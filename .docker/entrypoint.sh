#!/bin/sh -l
echo "PREPARING"
echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
ls -la

curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo make install

# ln -s $GITHUB_WORKSPACE /code
# cd /code
# ls -la
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE /usr/src/app/bin/codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE /usr/src/app/bin/codeclimate analyze