set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded..."
echo "> buildkite-agent artifact search \"*\"\n"
buildkite-agent artifact search "*"


echo "\n\nFor more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
