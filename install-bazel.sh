#!/bin/bash

# Find Bazel version from GitHub repository
export BAZEL_VERSION=$( 
  git ls-remote --tags --refs --sort="v:refname" \
  https://github.com/bazelbuild/bazel.git | \
  tail -n1 | \
  sed 's/.*\///' 
)

# Install Bazel
wget -O - https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh | \
  sudo bash
