#!/bin/sh

set -e

for index in $(seq 100000); do
  result=$(./app)

  echo $index: "'$result'"

  if [ "$result" != Hello ]; then
    break
  fi
done
