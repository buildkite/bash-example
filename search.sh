set -eo pipefail

echo "+++ :mag: Searching for the artifacts we uploaded..."
echo "1. Search for * to find everything"
buildkite-agent artifact search "*"

echo "2. Search for artifacts/image.gif to test that we can handle duplicates"
buildkite-agent artifact search "artifacts/image.gif"

echo "3. Search for something that doesn't exist"
set +e # the next command is expected to exit non-zero
result=buildkite-agent artifact search "horses"
echo "Artifact search returned $? $result"

echo
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
