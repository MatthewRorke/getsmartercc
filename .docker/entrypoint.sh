#!/bin/sh -l
docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$GITHUB_WORKSPACE" \
  --volume "$GITHUB_WORKSPACE":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate help