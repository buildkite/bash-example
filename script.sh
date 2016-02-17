#!/bin/bash

set -eo pipefail

echo "--- Build job checkout directory"

pwd
ls -la

echo "--- Build job environment"

env

echo "+++ Example tests"

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'artifact://artifacts/image.gif' 'Rainbows'

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$(cat artifacts/thumbsup.txt)\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"
