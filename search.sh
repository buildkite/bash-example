set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded..."
echo "> buildkite-agent artifact search \"artifacts/image.gif\""
buildkite-agent artifact search "artifacts/image.gif"

echo
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
