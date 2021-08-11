#!/bin/sh

set -e

rm -rf .pen foo.json foo
pen build
./app
