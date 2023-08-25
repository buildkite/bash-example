# Buildkite Bash Pipeline Example

This repository is an example [Buildkite](https://buildkite.com/) pipeline for running a simple bash script, [script.sh](script.sh), on a Buildkite agent.

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

## Repository Structure

The `.buildkite` directory, the standard Buildkite pipeline configuration folder contains the `pipeline.yml` pipeline definition.

The simple `script.sh` file located at the root is a standard bash shell script designed to print debug output with an inline image, an artifact, and exits with a success code (0).

## Using This Repository

1. Log into [Buildkite](https://www.buildkite.com)
2. Create a new pipeline and enter this repository URL: [https://github.com/buildkite/bash-example](https://github.com/buildkite/bash-example)
3. Ensure you have at least 1 agent running
4. Click 'New build' to run a new build and see the output in the logs

## License Information

The `bash-example` repository is licensed under the [MIT License](./License.md) - allowing for the free and unrestricted utilization, modification, and distribution of the code within.

## Getting Support

If you encounter problems, or have questions about how to use [Pipelines](https://buildkite.com/docs/pipelines), please contact our friendly Buildkite support at [support@buildkite.com](mailto:support@buildkite.com).

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get your first build running.
