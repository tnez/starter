#!/usr/bin/env bash

set -e

echo "Bootstrapping: root (root of the monorepo)"
echo "==="
npm ci

for package in `ls packages`
do
  echo "Bootstrapping: ${package}"
  echo "==="
  cd "packages/${package}"
  if [ -f package.json ]; then
    npm ci
  fi
  cd "../.."
  echo ""
done
