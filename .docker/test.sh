#!/bin/sh -l
echo "PREPARING"
echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
ls -la

docker run \
  --rm \
  --env CODECLIMATE_DEBUG=1 CODECLIMATE_CODE="/code" \
  --volume "$GITHUB_WORKSPACE":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze

# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze