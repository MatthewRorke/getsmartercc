#!/bin/sh -l
echo "PREPARING"
echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
ls -la

ln -s $GITHUB_WORKSPACE /code

docker pull codeclimate/codeclimate

docker run \
  --rm \
  -e CODECLIMATE_DEBUG=1 -e CODECLIMATE_CODE="/code" \
  --volume /code:/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate ls -la && analyze

# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze