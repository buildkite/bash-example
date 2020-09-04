#!/bin/bash
set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded earlier in the build..."
set -x
buildkite-agent artifact search "*"
buildkite-agent artifact search "artifacts/duplicate.txt"
buildkite-agent artifact search "horses"

echo
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
