#!/bin/sh -l
echo $GITHUB_WORKSPACE
/usr/src/app/bin/codeclimate analyse $GITHUB_WORKSPACE