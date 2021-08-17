#!/bin/sh

set -ex

rm -rf .pen app foo.json foo
pen build --target wasm32-wasi | tee pen-build.log
wasmtime app
