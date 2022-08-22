#!/bin/sh -l
echo "PREPARING"

curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo make install

echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
ls -la
codeclimate analyze

# docker run \
#   --rm \
#   --env CODECLIMATE_CODE="$PWD" \
#   --volume "$PWD":/code \
#   --volume /var/run/docker.sock:/var/run/docker.sock \
#   --volume /tmp/cc:/tmp/cc \
#   codeclimate/codeclimate analyze

# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze