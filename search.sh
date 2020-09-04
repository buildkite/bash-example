#!/bin/bash
set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded earlier in the build..."
set -x
buildkite-agent artifact search "*"
set +x

set -x
buildkite-agent artifact search "artifacts/duplicate.txt"
set +x

set -x
result="$(buildkite-agent artifact search "horses")"
set +x

echo
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
