set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env

echo "+++ :rocket: Artifacts were uploaded by artifact_paths!"
echo "For more info, visit our docs: https://buildkite.com/docs/pipelines/artifacts"
