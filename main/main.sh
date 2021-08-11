#!/bin/sh

set -ex

rm -rf .pen foo.json foo
pen build
./app
