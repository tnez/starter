#!/usr/bin/env bash

set -e

echo "Running tests for all packages"
echo "---"

for package in `ls packages`
do
  echo "packages/${package}"
  cd "packages/${package}"
  npm run test:ci --if-present
  cd "../.."
  echo ""
done
