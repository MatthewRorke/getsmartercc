#!/bin/sh -l
#GITHUB_WORKSPACE="/Users/mrorke/Projects/online-campus/blocks/student_appeals/"
chmod -R 777 $GITHUB_WORKSPACE
echo "PREPARING"
echo $GITHUB_WORKSPACE
#cd $GITHUB_WORKSPACE
ls -la

#ln -s $GITHUB_WORKSPACE /code

curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo make install

codeclimate

# docker run \
#   --rm \
#   -e CODECLIMATE_DEBUG=1 -e CODECLIMATE_CODE=$GITHUB_WORKSPACE \
#   --volume $GITHUB_WORKSPACE:/code \
#   --volume /var/run/docker.sock:/var/run/docker.sock \
#   --volume /tmp/cc:/tmp/cc \
#   codeclimate/codeclimate analyze

# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate engines:install
# CODECLIMATE_DOCKER=1 CODECLIMATE_DEBUG=1 CODECLIMATE_CODE=$GITHUB_WORKSPACE codeclimate analyze