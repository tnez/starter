#!/usr/bin/env bash

set -e

echo "Running: ${1} for all packages"
echo "---"

for package in `ls packages`
do
  echo "packages/${package}"
  cd "packages/${package}"
  npm run "${1}" --if-present
  cd "../.."
  echo ""
done
