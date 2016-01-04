#!/bin/bash

# This is a simple example bash script to get you started with Buildkite. If
# this test succeeds (which it does) then your build will be green.
#
# To read more about what you can do in your build scripts, see the
# Writing Build Scripts guide:
# https://buildkite.com/docs/guides/writing-build-scripts

set -eo pipefail

echo "--- Build job checkout directory"

pwd
ls -la

echo "--- Build job environment"

env

echo "+++ Example tests"

ASCII=`cat ascii/homer.txt`

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$ASCII\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"