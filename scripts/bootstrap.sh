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
  if [ -f package-lock.json ]; then
    npm ci
  else
    echo "skipping (no package-lock.json found)"
  fi
  cd "../.."
  echo ""
done
