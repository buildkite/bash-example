set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded..."
echo "> buildkite-agent artifact search \"*\""
buildkite-agent artifact search "*"

echo
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
