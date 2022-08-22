#!/bin/sh -l
echo "PREPARING"

docker pull codeclimate/codeclimate

docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$GITHUB_WORKSPACE" \
  --volume "$GITHUB_WORKSPACE":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate help

# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze